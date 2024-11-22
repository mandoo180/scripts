$SRC_DIR="$HOME/Notes"
$DEST_DIR="aws:Notes"

if (!(Test-Path $SRC_DIR)) {
    Write-Host "Usage: .remote\push.ps1"
    Write-Host "$SRC_DIR does not exist."
    exit(1)
}

scp -rp "$SRC_DIR/*" "$DEST_DIR"
