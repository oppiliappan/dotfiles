#!/usr/bin/env bash
# cycle through workspaces

# get the current ws
ws=$( xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //' )
total=5

while getopts fr options
do
	case $options in
		f)
			if [[ $ws -eq $total ]]
			then
				wmctrl -s 0
			else
				ws=$(( $ws + 1 ))
				wmctrl -s $ws
			fi
			;;
		r)
			if [[ $ws -eq 0 ]]
			then
				wmctrl -s $total
			else
				ws=$(( $ws - 1 ))
				wmctrl -s $ws
			fi
			;;
	esac
done
