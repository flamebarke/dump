<#
.SYNOPSIS
	Launches the calculator application
.DESCRIPTION
	This PowerShell script launches the calculator application.
.EXAMPLE
	PS> ./calc.ps1
#>

try {
	Start-Process "notepad.exe" -ArgumentList "Test"
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
