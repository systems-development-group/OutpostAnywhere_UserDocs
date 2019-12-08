# NOTE: Script must run from $PSScriptRoot 
#       (the same directory containing bin directory, which containins the driver artifacts)

#Requires -RunAsAdministrator

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop";


$OurDriverName = 'SQL Anywhere OA'
$ExpectedFileLocation = "$Env:SystemDrive\Program Files\OAODBC"
$DllOne = 'dbodbc12.dll'
$DllOneParent = 'Bin64'


function UpdateInstalledKey(
    [string] $driverName = $OurDriverName
) {
    # Assume The key below already exists.
    [string] $OdbcInstalledDriverKey = 'HKLM:\SOFTWARE\ODBC\ODBCINST.INI\ODBC Drivers'
    Set-ItemProperty -path $OdbcInstalledDriverKey -Name $driverName -Value 'Installed' -Verbose
}


function CreateFilePointerKeys(
    [string] $driverName = $OurDriverName,
    [string] $fileLocation = $ExpectedFileLocation,
    [string] $dll = $DllOne,
    [string] $dllParent = $DllOneParent
) {
    # Assume the key below already exists.
    [string] $OdbcDriverLocationKey = 'HKLM:\SOFTWARE\ODBC\ODBCINST.INI'
    # We need to create this key...
    $DriverFilePointersKey = "$OdbcDriverLocationKey\$driverName"
    try {
        # We want indempotency...
        Remove-Item -Path $DriverFilePointersKey 
    }
    catch {
        Write-Host "The key does not yet exist: $DriverFilePointersKey"
    }
    New-Item -Path  $DriverFilePointersKey 
    # And then set it's sub-key values
    Set-ItemProperty -path $DriverFilePointersKey -Name 'Driver' -Value "$fileLocation\$dllParent\$dll" -Verbose
    Set-ItemProperty -path $DriverFilePointersKey -Name 'Setup' -Value "$fileLocation\$dllParent\$dll" -Verbose    
}


function CopyFilesToExpectedLocation(
    [string] $fileLocation = $ExpectedFileLocation,
    [string] $dll = $DllOne,
    [string] $dllParent = $DllOneParent
) {
    if ( (Test-Path $fileLocation) -eq $false) {
        New-Item -ItemType 'Directory' -Path $fileLocation
    }    
    Get-ChildItem -Path "$PSScriptRoot\bin\" | ForEach-Object { 
        Copy-Item -Path $_.FullName -Destination $fileLocation -Recurse -Force -Verbose
    }
    regsvr32.exe "$fileLocation\$dllParent\$dll"
}


UpdateInstalledKey
CreateFilePointerKeys
CopyFilesToExpectedLocation

Write-Host "`nAll operations were successful`n" -ForegroundColor 'Green'

pause