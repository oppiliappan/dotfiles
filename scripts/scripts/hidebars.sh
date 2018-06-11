#!/usr/bin/env bash

while getopts hs options
do
	case $options in
		h)  # hide
			xdo hide -p  $( pgrep -f polybar\ music )
			xdo hide -p  $( pgrep -f polybar\ stats )
			xdo hide -p  $( pgrep -f polybar\ ws )
			pkill n30f
			;;
		s)  # show
			xdo show -p  $( pgrep -f polybar\ music)
			xdo show -p  $( pgrep -f polybar\ stats )
			xdo show -p  $( pgrep -f polybar\ ws )
			pkill n30f
			~/scripts/popups/cover.sh
			;;
	esac
done
