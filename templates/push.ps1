$SRC_DIR="{{src}}"
$DEST_DIR="aws:{{dest}}"

if (!(Test-Path $SRC_DIR)) {
    Write-Host "Usage: .remote\push.ps1"
    Write-Host "$SRC_DIR does not exist."
    exit(1)
}

scp -rp "$SRC_DIR/*" "$DEST_DIR"
