#!/usr/bin/env bash

if pgrep -x "cmus" > /dev/null
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	if [[ "$status" = *playing* ]] || [[ "$status" = *paused* ]]
	then
		artist=$( cmus-remote -Q | grep tag\ artist\ | sed 's/tag artist //' )
		title=$( cmus-remote -Q | grep tag\ title\ | sed 's/tag title //' )

		echo $title - $artist
	elif [[ "$status" = *stopped* ]]
	then
		echo " "
	fi
else
	echo 
fi
