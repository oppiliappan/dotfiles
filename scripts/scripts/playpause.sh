#!/bin/bash

if pgrep -x "cmus" > /dev/null
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	if [[ "$status" = *playing*  ]]
	then
		echo -ne " %{F#8ec07c} "
	elif [[ "$status" = *paused* ]]
	then
		echo -ne " %{F#8ec07c} "
	elif [[ "$status" = *stopped* ]]
	then
		echo -ne " %{F#8ec07c} "
	fi
else
	echo -ne ""
fi
