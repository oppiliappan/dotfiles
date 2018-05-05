#!/usr/bin/env bash
# Display currently playing song from cmus
# Requires cmus

active="$( get_xres foreground )"
inactive="$( get_xres color8 )"

if pgrep -x "cmus" > /dev/null
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	artist=$( cmus-remote -Q | grep tag\ artist\ | sed 's/tag artist //' )
	title=$( cmus-remote -Q | grep tag\ title\ | sed 's/tag title //' )

	if [[ "$status" = *playing* ]] 
	then
		echo "%{F${active}}$title · $artist"
	elif [[ "$status" = *paused* ]]
	then
		echo "%{F${inactive}}$title · $artist"
	elif [[ "$status" = *stopped* ]]
	then
		echo "%{F${inactive}}stopped"
	fi

else
	echo 
fi
