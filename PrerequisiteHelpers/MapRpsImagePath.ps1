param(
    [string] $desiredDriveLetter = 'O',
    [string] $pathToRpsImageRoot = '\\OUTPOSTDEVWEB\Images\Junius\VOLLOCAL'
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop";

# TODO: Code to ask the user to confirm the params/options.

New-PSDrive -Name $desiredDriveLetter -PSProvider FileSystem `
    -Root $pathToRpsImageRoot -Persist