#!/usr/bin/env bash

pkill n30f
while getopts hs options
do
	case $options in
		h)  # hide
            pkill -f polybar\ music
            pkill -f polybar\ np
			;;
		s)  # show
            if pgrep -f polybar\ np > /dev/null; then
                ~/scripts/popups/cover.sh
            else
                polybar np &
                polybar music &
                ~/scripts/popups/cover.sh
            fi
			;;
	esac
done

