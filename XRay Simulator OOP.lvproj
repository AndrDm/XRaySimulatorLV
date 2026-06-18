<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="26008000">
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
		<Item Name="Main (NoVisionRequired).vi" Type="VI" URL="../Main (NoVisionRequired).vi"/>
		<Item Name="_STL_to_Mesh.vi" Type="VI" URL="../3D utilities/_STL_to_Mesh.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="XRay Simu V Application" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{4646E288-EA29-4631-A1F6-08E3BA066D09}</Property>
				<Property Name="App_INI_GUID" Type="Str">{D30ECC51-D306-4D4F-94A8-68BC0F018FB3}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{B435EA17-E2F9-4C55-8D93-1C2726C14927}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">XRay Simu V Application</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/XRay Simu V Application</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{7582E47F-B8DC-45AA-9793-00371DBF136E}</Property>
				<Property Name="Bld_version.build" Type="Int">3</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">XRaySimuV.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/XRay Simu V Application/XRaySimuV.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/XRay Simu V Application/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{7960755E-B86A-4082-BD73-31BFAC2095AF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Andrey Dmitriev</Property>
				<Property Name="TgtF_fileDescription" Type="Str">XRay Simu V Application</Property>
				<Property Name="TgtF_internalName" Type="Str">XRay Simu V Application</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2020</Property>
				<Property Name="TgtF_productName" Type="Str">XRay Simu V Application</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{EA9506F4-0481-41FF-BB2F-44769B850C86}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">XRaySimuV.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="XRay Simu Application" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{8BE68546-EDBB-4400-AE2D-CF0A5391BC09}</Property>
				<Property Name="App_INI_GUID" Type="Str">{D756D833-D747-40C7-B371-F2171081D11F}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{1634EB37-DA18-41ED-B8C2-7FF782E8EC7F}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">XRay Simu Application</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/XRay Simu Application</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{8AA08B4D-BF69-42C6-969E-59A32F4B6333}</Property>
				<Property Name="Bld_version.build" Type="Int">6</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Bld_version.patch" Type="Int">2</Property>
				<Property Name="Destination[0].destName" Type="Str">XRaySimu.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/XRay Simu Application/XRaySimu.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/XRay Simu Application/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{4638552A-218E-48A8-A241-8A09DC830CC6}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Main (NoVisionRequired).vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">Andrey Dmitriev</Property>
				<Property Name="TgtF_fileDescription" Type="Str">XRay Simu Application</Property>
				<Property Name="TgtF_internalName" Type="Str">XRay Simu Application</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2020</Property>
				<Property Name="TgtF_productName" Type="Str">XRay Simu Application</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{0F95F449-E464-4EBD-A642-CB4E858C4041}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">XRaySimu.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="My Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">XRay Simulator</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{DFD504AF-D115-415A-B243-E4E05C344086}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{D469ABAE-A669-4B48-BCCD-8571F26238B4}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI LabVIEW Runtime 2026 Q1 Patch 2 (64-bit)</Property>
				<Property Name="DistPart[0].SoftDep[0].exclude" Type="Bool">true</Property>
				<Property Name="DistPart[0].SoftDep[0].productName" Type="Str">NI ActiveX Container (64-bit)</Property>
				<Property Name="DistPart[0].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[0].SoftDep[1].exclude" Type="Bool">true</Property>
				<Property Name="DistPart[0].SoftDep[1].productName" Type="Str">NI Logos 26.1</Property>
				<Property Name="DistPart[0].SoftDep[1].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[0].SoftDep[2].exclude" Type="Bool">true</Property>
				<Property Name="DistPart[0].SoftDep[2].productName" Type="Str">NI LabVIEW Web Server 2026 (64-bit)</Property>
				<Property Name="DistPart[0].SoftDep[2].upgradeCode" Type="Str">{5F449D4C-83B9-492E-986B-6B85A29C431D}</Property>
				<Property Name="DistPart[0].SoftDep[3].exclude" Type="Bool">true</Property>
				<Property Name="DistPart[0].SoftDep[3].productName" Type="Str">NI mDNS Responder 26.0</Property>
				<Property Name="DistPart[0].SoftDep[3].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[0].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[4].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[0].SoftDep[4].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[0].SoftDep[5].exclude" Type="Bool">true</Property>
				<Property Name="DistPart[0].SoftDep[5].productName" Type="Str">NI TDM Streaming 26.1</Property>
				<Property Name="DistPart[0].SoftDep[5].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[0].SoftDepCount" Type="Int">6</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{29DF0233-3D76-3B0E-A248-57E588E99083}</Property>
				<Property Name="DistPartCount" Type="Int">1</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/XRay Simulator/My Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">My Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{DFD504AF-D115-415A-B243-E4E05C344086}</Property>
				<Property Name="INST_includeError" Type="Bool">false</Property>
				<Property Name="INST_installerName" Type="Str">install.exe</Property>
				<Property Name="INST_productName" Type="Str">XRay Simulator</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.3</Property>
				<Property Name="InstSpecBitness" Type="Str">64-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">26128002</Property>
				<Property Name="MSI_distID" Type="Str">{4C073CC8-CB73-42FA-9669-A20C2AAEFBF2}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">3</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{32D68F39-0D8D-4137-89EF-D930A90449A0}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{DFD504AF-D115-415A-B243-E4E05C344086}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{DFD504AF-D115-415A-B243-E4E05C344086}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">XRaySimu.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">XRaySimu</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">XRay Simulator OOP</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{0F95F449-E464-4EBD-A642-CB4E858C4041}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">XRay Simu Application</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/XRay Simu Application</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
