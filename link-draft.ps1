# link-draft.ps1
param(
    [Parameter(Mandatory = $true)]
    [string]$DraftName,   # e.g. "puell-multiple-variants.md"

    [Parameter(Mandatory = $true)]
    [string]$Category,   # e.g. "puell-multiple-variants.md"

    [string]$Date = (Get-Date -Format "yyyy-MM-dd")  # defaults to today's date
)

$draftPath = "drafts\drafts\$DraftName"
Write-Host "$draftPath"
$postName = "$Date-hard-link-to-$DraftName"
$postPath = "$Category\_posts\$postName"

# Validate that the draft exists
if (!(Test-Path $draftPath)) {
    Write-Host "[Error] Draft file not found: $draftPath" -ForegroundColor Red
    exit 1
}

# Check if the link already exists
if (Test-Path $postPath) {
    Write-Host "[Warning] Existing link found. Removing: $postPath" -ForegroundColor Yellow
    try {
        Remove-Item $postPath -Force
        Write-Host "[Success] Old link removed." -ForegroundColor Green
    }
    catch {
        Write-Host "[Error] Failed to remove existing link: $postPath" -ForegroundColor Red
        exit 1
    }
}

# Create hard link
Write-Host "Creating hard link..."
cmd /c mklink /H "$postPath" "$draftPath" | Out-Null

if (Test-Path $postPath) {
    Write-Host "[Success] Symlink created:"
    Write-Host "   $postPath → $draftPath" -ForegroundColor Green
} else {
    Write-Host "[Error] Failed to create symlink. Try running PowerShell as Administrator." -ForegroundColor Red
}
