$SRC_DIR="aws:zsh/\*"
$DEST_DIR="/Users/es-kyeongsoo/Projects/Code/scripts/zsh"

if (!(Test-Path $DEST_DIR)) {
    Write-Host "Usage: .remote\pull.ps1"
    Write-Host "$DEST_DIR does not exist."
    exit(1)
}

scp -rp $SRC_DIR $DEST_DIR