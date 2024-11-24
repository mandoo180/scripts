$SRC_DIR="/Users/es-kyeongsoo/Projects/Code/scripts/zsh"
$DEST_DIR="aws:zsh"

if (!(Test-Path $SRC_DIR)) {
    Write-Host "Usage: .remote\push.ps1"
    Write-Host "$SRC_DIR does not exist."
    exit(1)
}

scp -rp "$SRC_DIR/*" "$DEST_DIR"