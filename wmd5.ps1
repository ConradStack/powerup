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
    $hash = Get-FileHash $_.FullName -Algorithm MD5
    $outstr = [string]::Format("{0}`t{1}", $hash.Hash, $_.Basename)
    if( !([string]::IsNullOrEmpty($outFile)) ){
        Out-File -filepath $outFile -InputObject $outstr -Append 
    } else {
        Write-Output $outstr
    }
}


#    if( [System.IO.File]::Exists($_) ){
# [string]::Format("{0}`t{1}", $hash.Hash, $_.Basename)
#[System.Console]::Write("{0}`t{1}`n", ($hash.Hash, $_.Basename))

