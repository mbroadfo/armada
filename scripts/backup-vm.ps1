param(
    [Parameter(Mandatory = $true)]
    [string]$SourceVmFolder,

    [Parameter(Mandatory = $true)]
    [string]$DestinationRoot,

    [string]$Label = "Armada-Win98SE-GOLD"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $SourceVmFolder)) {
    throw "Source VM folder not found: $SourceVmFolder"
}

if (-not (Test-Path -LiteralPath $DestinationRoot)) {
    New-Item -ItemType Directory -Path $DestinationRoot | Out-Null
}

$timestamp = Get-Date -Format "yyyy-MM-dd_HHmmss"
$backupPath = Join-Path $DestinationRoot ("{0}_{1}" -f $Label, $timestamp)

Write-Host "Creating backup folder: $backupPath"
New-Item -ItemType Directory -Path $backupPath | Out-Null

Write-Host "Copying VM files..."
Copy-Item -LiteralPath $SourceVmFolder -Destination $backupPath -Recurse

Write-Host "Backup complete: $backupPath"
Write-Host "Tip: run verify-checksum.ps1 against the backup for integrity tracking."
