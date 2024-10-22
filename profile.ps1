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

