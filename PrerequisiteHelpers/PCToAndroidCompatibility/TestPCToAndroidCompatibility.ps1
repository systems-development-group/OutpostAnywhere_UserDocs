Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop";


Set-Location $PSScriptRoot
& ./adb.exe devices

pause