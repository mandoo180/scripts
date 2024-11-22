$SRC_DIR="aws:Notes/\*"
$DEST_DIR="$HOME/Notes"

if (!(Test-Path $DEST_DIR)) {
    Write-Host "Usage: .remote\pull.ps1"
    Write-Host "$DEST_DIR does not exist."
    exit(1)
}

scp -rp $SRC_DIR $DEST_DIR
