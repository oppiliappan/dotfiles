#! /usr/bin/env bash

function __list_to_fzf() {
    tmux ls -F "#{session_name}" | fzf
}

if [ -n $TMUX ]; then
    tmux switch-client -t "$(__list_to_fzf)"
else
    tmux a -dt "$(tmux ls -F "#{session_name}" | fzf)"
fi
