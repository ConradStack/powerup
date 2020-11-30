# Start up profile.ps1

# initialize conda 
. "$HOME\anaconda3\shell\condabin\conda-hook.ps1"

# Alias for nvidia-smi
Set-Alias -Name nvidia-smi -value C:\Windows\System32\DriverStore\FileRepository\.....\nvidia-smi.exe

# Alias / function that mimics 'ENV' command in linux
function env {
    $(gci env:*)
}

## Other examples:

# $env:userprofile  # print env variable 'userprofile'

