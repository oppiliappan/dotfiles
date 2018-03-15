#!/bin/bash

if [[ $( pgrep cmus ) ]]
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	if [[ "$status" = *playing*  ]]
	then
		echo -ne "%{F#b52441}"
	elif [[ "$status" = *paused* ]]
	then
		echo -ne "%{F#b52441}"
	elif [[ "$status" = *stopped* ]]
	then
		echo -ne "%{F#b52441}"
	fi
else
	echo -ne ""
fi
