# USAGE: .\MapRpsImagePath.ps1 -desiredDriveLetter 'H' -pathToRpsImageRoot '\\hpelitedesk1\RPSIMAGES\Rye\Photos\VOLLOCAL'

param(
    [string] $desiredDriveLetter = 'O',
    [string] $pathToRpsImageRoot = '\\OUTPOSTDEVWEB\Images\Junius\VOLLOCAL'
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop";


[string] $msg = `
    "`n If the following options are acceptable, press any key to continue or CTRL+C to quit. `n" + 
    " - Letter for new drive: $desiredDriveLetter `n" + 
    " - Path to RPS images: $pathToRpsImageRoot `n"

Read-Host -Prompt $msg

# New-PSDrive -Name $desiredDriveLetter -PSProvider FileSystem -Root $pathToRpsImageRoot -Persist

& net use "$desiredDriveLetter`:" $pathToRpsImageRoot