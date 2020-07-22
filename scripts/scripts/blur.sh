#! /usr/bin/env bash

state="unblurred"
while :; do
    current_workspace="$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')"
    if [[ -n "$current_workspace" ]]; then
        num_windows="$(echo "$(wmctrl -l)" | awk -F" " '{print $2}' | grep ^$current_workspace)"
        if [ -n "$num_windows" ]; then
            if [ "$state" != "blurred" ]; then
                for i in {0..6}; do
                    feh --bg-fill ~/pics/blurs/busy"$i".jpg
                done
            fi
            state="blurred"
        else
            if [ "$state" != "unblurred" ]; then
                for i in $(seq 5 -1 0); do
                    feh --bg-fill ~/pics/blurs/busy"$i".jpg
                done
                feh --bg-fill ~/pics/blurs/busy.jpg
            fi
            state="unblurred"
        fi
    fi
done
