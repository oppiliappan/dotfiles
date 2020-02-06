#! /usr/bin/env bash

function __fzf() {
    fzf --cycle --height 7 --reverse
}

function __list_to_fzf() {
    tmux ls -F "#{session_name}" | __fzf
}

if [ -n "$TMUX" ]; then
    tmux switch-client -t "$(__list_to_fzf)"
else
    tmux a -dt "$(tmux ls -F "#{session_name}" | __fzf)"
fi
