#include "pch.h"
#include "LV_3D_Util.h"

constexpr float EPSIL0N = 1e-8f;

#define CROSS(dst, v1, v2) \
dst[0] = v1[1] * v2[2] - v1[2] * v2[1]; \
dst[1] = v1[2] * v2[0] - v1[0] * v2[2]; \
dst[2] = v1[0] * v2[1] - v1[1] * v2[0];

#define DOT(v1, v2) (v1[0] * v2[0] + v1[1] * v2[1] + v1[2] * v2[2])

#define SUB(dst, v1, v2) \
dst[0] = v1[0] - v2[0]; \
dst[1] = v1[1] - v2[1]; \
dst[2] = v1[2] - v2[2];

/*
https://en.wikipedia.org/wiki/Möller–Trumbore_intersection_algorithm
*/

int intersect_triangle(float orig[3], float dir[3],
	float vert0[3], float vert1[3], float vert2[3],
	float* t, float* u, float* v)
{
	float edge1[3], edge2[3], tvec[3], pvec[3], qvec[3];
	float det, inv_det;

	*t = 0; *u = 0; *v = 0;

	/* Find vectors for the edges sharing verto */
	SUB(edge1, vert1, vert0);
	SUB(edge2, vert2, vert0);

	/* begin calculating determinant - also used to calculate U parameter */
	CROSS(pvec, dir, edge2);

	/* if deternina¡t is near zero, ray lies in plane of triangle */
	det = DOT(edge1, pvec);

	if (det > -EPSIL0N && det < EPSIL0N) return 0;
	inv_det = 1.0f / det;

	/* calculate distance from vertO to ray origin */
	SUB(tvec, orig, vert0);

	/* calculate U parameter and test bounds */
	*u = DOT(tvec, pvec) * inv_det;
	if (*u < 0.0f || *u > 1.0f) return 0;

	/* prepare to test V parameter */
	CROSS(qvec, tvec, edge1);

	/* calculate V parameter and test bounds */
	*v = DOT(dir, qvec) * inv_det;
	if (*v < 0.0f || *u + *v > 1.0f) return 0;

	/* calculate t, ray intersects triangle */
	*t = DOT(edge2, qvec) * inv_det;

	return 1;
}

void sort_walls(float* depth, float* depth_sorted, int n, int* nWalls)
{
	float temp;
	int i, j;

	memset(depth_sorted, 0, n * sizeof(float));
	for (*nWalls = 0, i = 0; i < n; i++) {
		if (fabs(depth[i]) > EPSIL0N) depth_sorted[(*nWalls)++] = depth[i];
	}

	/* Sort the given distances in Descending Order, of length n (meshSize) */
	for (i = 1; i < (*nWalls); i++) {
		for (j = 0; j < (*nWalls) - i; j++) {
			if (depth_sorted[j] < depth_sorted[j + 1]) {
				temp = depth_sorted[j];
				depth_sorted[j] = depth_sorted[j + 1];
				depth_sorted[j + 1] = temp;
			}
		}
	}
}


LV_3D_UTIL_API int intersect_triangleLoopImg2(float* LVvert0, float* LVvert1, float* LVvert2,
	int MeshSize, int ImageSize, float* Image, float DetectorSize, float FDD, LONGLONG* ExecutionTime)
{
	float dirX, dirY, dirZ, scale;
	float orig[3], dir[3];
	float vert0[3], vert1[3], vert2[3];
	float t, u, v;
	float* depth;
	float* depth_sorted;
	float depthSum;
	int ret;
	int nWalls;
	LARGE_INTEGER ElapsedMicroseconds, StartingTime, EndingTime, Frequency;
	float *lbx, *rtx, *lby, *rty, *lbz, *rtz;

	if (!ImageSize || !Image) return 0;

	*ExecutionTime = 0;
	QueryPerformanceFrequency(&Frequency);
	QueryPerformanceCounter(&StartingTime);

	depth = (float*)malloc(sizeof(float) * MeshSize);
	depth_sorted = (float*)malloc(sizeof(float) * MeshSize);

	lbx = (float*)malloc(sizeof(float) * MeshSize);
	rtx = (float*)malloc(sizeof(float) * MeshSize);
	lby = (float*)malloc(sizeof(float) * MeshSize);
	rty = (float*)malloc(sizeof(float) * MeshSize);
	lbz = (float*)malloc(sizeof(float) * MeshSize);
	rtz = (float*)malloc(sizeof(float) * MeshSize);

	//this need for bounding boxes analysis
	for (int m = 0; m < MeshSize; m++) {
		lbx[m] = min(min(LVvert0[m * 3], LVvert1[m * 3]), LVvert2[m * 3]);
		rtx[m] = max(max(LVvert0[m * 3], LVvert1[m * 3]), LVvert2[m * 3]);
		lby[m] = min(min(LVvert0[m * 3 + 1], LVvert1[m * 3 + 1]), LVvert2[m * 3 + 1]);
		rty[m] = max(max(LVvert0[m * 3 + 1], LVvert1[m * 3 + 1]), LVvert2[m * 3 + 1]);
		lbz[m] = min(min(LVvert0[m * 3 + 2], LVvert1[m * 3 + 2]), LVvert2[m * 3 + 2]);
		rtz[m] = max(max(LVvert0[m * 3 + 2], LVvert1[m * 3 + 2]), LVvert2[m * 3 + 2]);
	}

	float HalfSize = (float)ImageSize / 2.0f - 0.5f;
	orig[0] = 0; orig[1] = 0; orig[2] = 0;

	for (int z = 0; z < ImageSize; z++) {
		for (int x = 0; x < ImageSize; x++) {
			dirY = FDD;
			dirX = (DetectorSize / HalfSize) * ((float)x - HalfSize);
			dirZ = (DetectorSize / HalfSize) * ((float)z - HalfSize);
			scale = 1.0f / sqrtf(dirX * dirX + dirY * dirY + dirZ * dirZ);
			dir[0] = dirX * scale;
			dir[1] = dirY * scale;
			dir[2] = dirZ * scale;

			float dirfracx = 1.0f / dir[0];
			float dirfracy = 1.0f / dir[1];
			float dirfracz = 1.0f / dir[2];

			for (int m = 0; m < MeshSize; m++) {

				float t1 = (lbx[m]) * dirfracx;
				float t2 = (rtx[m]) * dirfracx;
				float t3 = (lby[m]) * dirfracy;
				float t4 = (rty[m]) * dirfracy;
				float t5 = (lbz[m]) * dirfracz;
				float t6 = (rtz[m]) * dirfracz;

				float tmin = max(max(min(t1, t2), min(t3, t4)), min(t5, t6));
				float tmax = min(min(max(t1, t2), max(t3, t4)), max(t5, t6));

				// if tmax < 0, ray (line) is intersecting AABB, but the whole AABB is behind us
				if ((tmax < 0) || (tmin > tmax)) {
					depth[m] = 0;
				}
				else{
					vert0[0] = LVvert0[m * 3]; vert0[1] = LVvert0[m * 3 + 1]; vert0[2] = LVvert0[m * 3 + 2];
					vert1[0] = LVvert1[m * 3]; vert1[1] = LVvert1[m * 3 + 1]; vert1[2] = LVvert1[m * 3 + 2];
					vert2[0] = LVvert2[m * 3]; vert2[1] = LVvert2[m * 3 + 1]; vert2[2] = LVvert2[m * 3 + 2];

					ret = intersect_triangle(orig, dir, vert0, vert1, vert2, &t, &u, &v);
					depth[m] = t;
				}
			}

			sort_walls(depth, depth_sorted, MeshSize, &nWalls);
			depthSum = 0; //compute summary thickness from pairs of the walls
			for (int i = 0; i < (nWalls << 1); i++) {
				depthSum += (depth_sorted[i * 2] - depth_sorted[i * 2 + 1]);
			}
			Image[x + z * ImageSize] = depthSum;
		}
	}
	free(depth);
	free(depth_sorted);
	free(lbx);
	free(rtx);
	free(lby);
	free(rty);
	free(lbz);
	free(rtz);

	QueryPerformanceCounter(&EndingTime);
	ElapsedMicroseconds.QuadPart = EndingTime.QuadPart - StartingTime.QuadPart;
	ElapsedMicroseconds.QuadPart *= 1000000;
	ElapsedMicroseconds.QuadPart /= Frequency.QuadPart;
	*ExecutionTime = ElapsedMicroseconds.QuadPart;
}

//http://ndevilla.free.fr/median/median.pdf

typedef float pixelvalue;
#define PIX_SORT(a,b) { if ((a)>(b)) PIX_SWAP((a),(b)); }
#define PIX_SWAP(a,b) { pixelvalue temp=(a);(a)=(b);(b)=temp; }

LV_3D_UTIL_API void Median3x3(int ImageSize, float* Image)
{
	float p[9], maximum;
	float* imageOut;
	int i, j;

	//if (!Image) return;

	imageOut = (float*)malloc(sizeof(float) * ImageSize * ImageSize);

	for (i = 1; i < ImageSize - 1; i++) {
		for (j = 1; j < ImageSize - 1; j++) {
			p[0] = Image[j + 0 + (i + 0) * ImageSize];
			p[1] = Image[j + 1 + (i + 0) * ImageSize];
			p[2] = Image[j - 1 + (i + 0) * ImageSize];
			p[3] = Image[j + 0 + (i + 1) * ImageSize];
			p[4] = Image[j + 1 + (i + 1) * ImageSize];
			p[5] = Image[j - 1 + (i + 1) * ImageSize];
			p[6] = Image[j + 0 + (i - 1) * ImageSize];
			p[7] = Image[j + 1 + (i - 1) * ImageSize];
			p[8] = Image[j - 1 + (i - 1) * ImageSize];
			PIX_SORT(p[1], p[2]); PIX_SORT(p[4], p[5]); PIX_SORT(p[7], p[8]);
			PIX_SORT(p[0], p[1]); PIX_SORT(p[3], p[4]); PIX_SORT(p[6], p[7]);
			PIX_SORT(p[1], p[2]); PIX_SORT(p[4], p[5]); PIX_SORT(p[7], p[8]);
			PIX_SORT(p[0], p[3]); PIX_SORT(p[5], p[8]); PIX_SORT(p[4], p[7]);
			PIX_SORT(p[3], p[6]); PIX_SORT(p[1], p[4]); PIX_SORT(p[2], p[5]);
			PIX_SORT(p[4], p[7]); PIX_SORT(p[4], p[2]); PIX_SORT(p[6], p[4]);
			PIX_SORT(p[4], p[2]);
			imageOut[j + i * ImageSize] = p[4];
		}
	}

	for (i = 1; i < ImageSize - 1; i++) {
		for (j = 1; j < ImageSize - 1; j++) {
			Image[j + i * ImageSize] = imageOut[j + i * ImageSize];
		}
	}

	free(imageOut);
}