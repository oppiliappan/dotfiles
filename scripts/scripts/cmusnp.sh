#!/bin/bash

if pgrep -x "cmus" > /dev/null
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	if [[ "$status" = *playing* ]] || [[ "$status" = *paused* ]]
	then
		artist=$( cmus-remote -Q | grep tag\ artist\ | sed 's/tag artist //' )
		title=$( cmus-remote -Q | grep tag\ title\ | sed 's/tag title //' )
		shuffle=$( cmus-remote -Q | grep set\ shuffle\ | sed 's/set shuffle //' )

		echo -ne $title - $artist
	elif [[ "$status" = *stopped* ]]
	then
		echo -ne " "
	fi
else
	echo 
fi
