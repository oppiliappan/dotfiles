#!/bin/bash

if [[ $( pgrep cmus ) ]]
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	if [[ "$status" = *playing*  ]]
	then
		echo -ne "%{F#7f941a}"
	elif [[ "$status" = *paused* ]]
	then
		echo -ne "%{F#7f941a}"
	elif [[ "$status" = *stopped* ]]
	then
		echo -ne "%{F#7f941a}"
	fi
else
	echo -ne ""
fi
