#!/bin/zsh


SRC_DIR="aws:{{src}}"
DEST_DIR="{{dest}}"

if [ ! -d "$DEST_DIR" ]; then
  echo 'Usage: .remote/pull.sh'
  echo "$DEST_DIR directory does not exist."
  exit 1
fi

echo "Copy from: $SRC_DIR to: $DEST_DIR"

rsync -rvzt -U \
      --log-file="$HOME/logs/{{src}}.log" \
      --progress \
      "$SRC_DIR/" "$DEST_DIR"
