<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="DLL Source" Type="Folder">
			<Item Name="LV_3D_Util" Type="Folder" URL="../LV_3D_Util/LV_3D_Util">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="typedefs" Type="Folder">
			<Item Name="Render States.ctl" Type="VI" URL="../typedefs/Render States.ctl"/>
			<Item Name="System States.ctl" Type="VI" URL="../typedefs/System States.ctl"/>
			<Item Name="Models List.ctl" Type="VI" URL="../typedefs/Models List.ctl"/>
		</Item>
		<Item Name="3D utilities.lvlib" Type="Library" URL="../3D utilities/3D utilities.lvlib"/>
		<Item Name="XRay Axis Rails.lvclass" Type="LVClass" URL="../XRay Axis Rails/XRay Axis Rails.lvclass"/>
		<Item Name="XRay Beam.lvclass" Type="LVClass" URL="../XRay Beam/XRay Beam.lvclass"/>
		<Item Name="XRay Cabinet.lvclass" Type="LVClass" URL="../XRay Cabinet/XRay Cabinet.lvclass"/>
		<Item Name="XRay CArm.lvclass" Type="LVClass" URL="../XRay CArm/XRay CArm.lvclass"/>
		<Item Name="XRay Part Sample.lvclass" Type="LVClass" URL="../XRay Part Sample/XRay Part Sample.lvclass"/>
		<Item Name="XRay Scene.lvclass" Type="LVClass" URL="../XRay Scene/XRay Scene.lvclass"/>
		<Item Name="XRay Table.lvclass" Type="LVClass" URL="../XRay Table/XRay Table.lvclass"/>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="IMAQ ArrayToImage" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ArrayToImage"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="LV3DPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LV3DPointTypeDef.ctl"/>
				<Item Name="LVRGBAColorTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRGBAColorTypeDef.ctl"/>
				<Item Name="LVSceneTextAlignment.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVSceneTextAlignment.ctl"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Vision_Development_Module.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/NI_Vision_Development_Module.lvlib"/>
				<Item Name="Read BMP File Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Read BMP File Data.vi"/>
				<Item Name="Read BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Read BMP File.vi"/>
				<Item Name="Read BMP Header Info.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Read BMP Header Info.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Stall Data Flow.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Stall Data Flow.vim"/>
				<Item Name="Synchronize Data Flow.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Synchronize Data Flow.vim"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="3DS Models.ctl" Type="VI" URL="../3D utilities/3DS Models.ctl"/>
			<Item Name="LV_3D_Util64.dll" Type="Document" URL="../LV_3D_Util64.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="XRay Simu Application" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{4646E288-EA29-4631-A1F6-08E3BA066D09}</Property>
				<Property Name="App_INI_GUID" Type="Str">{D30ECC51-D306-4D4F-94A8-68BC0F018FB3}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{B435EA17-E2F9-4C55-8D93-1C2726C14927}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">XRay Simu Application</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/XRay Simu Application</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{7582E47F-B8DC-45AA-9793-00371DBF136E}</Property>
				<Property Name="Bld_version.build" Type="Int">2</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">XRaySimu.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/XRay Simu Application/XRaySimu.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/XRay Simu Application/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{3D4D7AA1-A673-4E34-84E4-937A13BB0AE3}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Andrey Dmitriev</Property>
				<Property Name="TgtF_fileDescription" Type="Str">XRay Simu Application</Property>
				<Property Name="TgtF_internalName" Type="Str">XRay Simu Application</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2020</Property>
				<Property Name="TgtF_productName" Type="Str">XRay Simu Application</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{EA9506F4-0481-41FF-BB2F-44769B850C86}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">XRaySimu.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
