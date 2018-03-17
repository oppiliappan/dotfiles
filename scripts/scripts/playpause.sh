#!/bin/bash

if [[ $( pgrep cmus ) ]]
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	if [[ "$status" = *playing*  ]]
	then
		echo -ne "%{F#3c5e3d}"
	elif [[ "$status" = *paused* ]]
	then
		echo -ne "%{F#3c5e3d}"
	elif [[ "$status" = *stopped* ]]
	then
		echo -ne "%{F#3c5e3d}"
	fi
else
	echo -ne ""
fi
