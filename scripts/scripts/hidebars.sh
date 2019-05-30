#!/usr/bin/env bash

pkill n30f
while getopts hs options
do
	case $options in
		h)  # hide
            pkill -f polybar\ artist
            pkill -f polybar\ track
            pkill -f polybar\ album
			;;
		s)  # show
            if pgrep -f polybar\ artist > /dev/null; then
                ~/scripts/popups/cover.sh
            else
                polybar artist &
                polybar track  &
                polybar album  &
                ~/scripts/popups/cover.sh
            fi
			;;
	esac
done
