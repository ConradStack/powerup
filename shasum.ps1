Param
(
    [parameter(Mandatory=$true)]
    [String[]]
    $FileNames,

    [Parameter(Mandatory=$false)]
    [AllowNull()][AllowEmptyString()]
    [string]$outFile
)


Get-ChildItem $FileNames | Foreach-Object { 
    $hash = Get-FileHash $_.FullName -Algorithm SHA256
    $outstr = [string]::Format("{0}`t{1}", $hash.Hash, $_.Basename)
    if( !([string]::IsNullOrEmpty($outFile)) ){
        Out-File -filepath $outFile -InputObject $outstr -Append 
    } else {
        Write-Output $outstr
    }
}

