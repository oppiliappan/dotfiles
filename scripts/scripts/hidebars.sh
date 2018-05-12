#!/usr/bin/env bash

while getopts hs options
do
	case $options in
		h)
			xdo hide -p  $( pgrep -f polybar\ music )
			xdo hide -p  $( pgrep -f polybar\ date )
			xdo hide -p  $( pgrep -f polybar\ ws )
			;;
		s)
			xdo show -p  $( pgrep -f polybar\ music)
			xdo show -p  $( pgrep -f polybar\ date )
			xdo show -p  $( pgrep -f polybar\ ws )
			;;
	esac
done
