#!/bin/zsh

K_SCRIPT_HOME="$HOME/Projects/Code/scripts"
K_SCRIPT_VENV="$K_SCRIPT_HOME/python/venv"
K_SCRIPT_PATH="$K_SCRIPT_HOME/python/remote.py"

init() {
    "$K_SCRIPT_VENV/bin/python" "$K_SCRIPT_PATH"
}

message='Usage: .remote command [...args]'

if [ -z "$1" ]; then
    echo "$message"
    exit 1
fi

if [ "$1" = "init" ]; then
    "$@"
    if [ -d ".remote" ]; then
        chmod -R 755 ".remote"
    fi
fi
