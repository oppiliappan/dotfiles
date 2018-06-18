#!/bin/bash
# Interactive polybar icon for music controls
# Requires cmus



if pgrep -x "cmus" > /dev/null
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	if [[ "$status" = *playing*  ]]
	then
		echo -ne " %{F$(get_xres color2)} "
	elif [[ "$status" = *paused* ]]
	then
		echo -ne " %{F$(get_xres color2)} "
	elif [[ "$status" = *stopped* ]]
	then
		echo -ne " %{F$(get_xres color2)} "
	fi
else
	echo -ne "  "
fi
