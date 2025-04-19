#!/usr/bin/env bash

MODE="$1"

# Try checking if Telescope and telescope-tmux plugin are available
CHECK_CMD='lua require("telescope._extensions.tmux")'
if nvim --headless +"$CHECK_CMD" +q &>/dev/null; then
    if [ "$MODE" = "sessions" ]; then
        nvim -c ":Telescope tmux sessions quit_on_select=true"
    elif [ "$MODE" = "windows" ]; then
        nvim -c ":Telescope tmux windows quit_on_select=true"
    fi
else
    if [ "$MODE" = "sessions" ]; then
        tmux choose-tree -s  # choose sessions
    elif [ "$MODE" = "windows" ]; then
        tmux choose-tree -w  # choose windows
    fi
fi
