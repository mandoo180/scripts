#!/bin/zsh


SRC_DIR="/Users/es-kyeongsoo/Projects/Code/scripts/zsh"
DEST_DIR="aws:zsh"

if [ ! -d "$SRC_DIR" ]; then
  echo 'Usage: .remote/push.sh'
  echo "$SRC_DIR directory does not exist."
  exit 1
fi

echo "Copy from: $SRC_DIR to: $DEST_DIR"

rsync -rvzt -U \
      --log-file=$HOME/logs/Notes.log \
      --progress \
      "$SRC_DIR" "$DEST_DIR"