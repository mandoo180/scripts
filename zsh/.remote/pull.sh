#!/bin/zsh


SRC_DIR="aws:zsh/"
DEST_DIR="$HOME//Users/es-kyeongsoo/Projects/Code/scripts/zsh"

if [ ! -d "$DEST_DIR" ]; then
  echo 'Usage: .remote/pull.sh'
  echo "$DEST_DIR directory does not exist."
  exit 1
fi

echo "Copy from: $SRC_DIR to: $DEST_DIR"

rsync -rvzt -U \
      --log-file=$HOME/logs/zsh.log \
      --progress \
      "$SRC_DIR" "$DEST_DIR"