#!/bin/zsh


SRC_DIR="{{src}}"
DEST_DIR="aws:{{dest}}"

if [ ! -d "$SRC_DIR" ]; then
  echo 'Usage: .remote/push.sh'
  echo "$SRC_DIR directory does not exist."
  exit 1
fi

echo "Copy from: $SRC_DIR to: $DEST_DIR"

rsync -rvzt -U \
      --log-file="$HOME/logs/{{dest}}.log" \
      --progress \
      "$SRC_DIR/" "$DEST_DIR"
