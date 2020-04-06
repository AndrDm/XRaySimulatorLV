#pragma once

#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "framework.h"

#pragma warning( disable : 4715)
#pragma warning( disable : 6385)
#pragma warning( disable : 6386)
#pragma warning( disable : 6011)

#ifdef __cplusplus
extern "C" {
#endif

#define LV_3D_UTIL_API extern "C" __declspec(dllexport)

	LV_3D_UTIL_API int intersect_triangle(float orig[3], float dir[3],
		float vert0[3], float vert1[3], float vert2[3],
		float* t, float* u, float* v);

	LV_3D_UTIL_API int intersect_triangleLoopImg2(float* LVvert0, float* LVvert1, float* LVvert2,
		int MeshSize,
		int ImageSize,
		float* Image,
		float DetectorSize,
		float FDD,
		LONGLONG* ExecutionTime);

#ifdef __cplusplus
}
#endif

