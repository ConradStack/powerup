# no telemetry 
$env:POWERSHELL_TELEMETRY_OPTOUT = 1

# ------------------------
# Aliases

function env {
    $(gci env:*)
}

function ll {
    $(dir | sort -property LastWriteTime -Descending)
}

Set-Alias subl 'C:\Program Files\Sublime Text\subl.exe'


# Unblock-File .\Documents\PowerShell\Modules\md5sum.ps1
# Unblock-File .\Documents\PowerShell\Modules\shasum.ps1
Set-Alias md5 "$env:USERPROFILE\Documents\PowerShell\Modules\md5sum.ps1"
Set-Alias shasum "$env:USERPROFILE\Documents\PowerShell\Modules\shasum.ps1"



# ------------------------
# Chords
# Get-PSReadLineKeyHandler
# Get-PSReadLineKeyHandler -Unbound
Set-PSReadLineKeyHandler -Chord 'Ctrl+a' -Function BeginningOfLine
Set-PSReadLineKeyHandler -Chord 'Ctrl+e' -Function EndOfLine
Set-PSReadLineKeyHandler -Chord 'Ctrl+u' -Function DeleteLineToFirstChar


# ------------------------
# Styles
# $PSStyle
$PSStyle.FileInfo.Directory = "$($PSStyle.Foreground.BrightYellow)"

