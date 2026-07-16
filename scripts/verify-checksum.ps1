param(
    [Parameter(Mandatory = $true)]
    [string]$TargetFolder,

    [string]$Algorithm = "SHA256"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $TargetFolder)) {
    throw "Target folder not found: $TargetFolder"
}

$manifest = Join-Path $TargetFolder ("checksums_{0}.txt" -f (Get-Date -Format "yyyy-MM-dd_HHmmss"))

Write-Host "Generating $Algorithm checksums for: $TargetFolder"
$files = Get-ChildItem -LiteralPath $TargetFolder -File -Recurse

foreach ($file in $files) {
    $hash = Get-FileHash -LiteralPath $file.FullName -Algorithm $Algorithm
    "{0} *{1}" -f $hash.Hash, $file.FullName | Out-File -FilePath $manifest -Append -Encoding ascii
}

Write-Host "Checksum manifest written to: $manifest"
