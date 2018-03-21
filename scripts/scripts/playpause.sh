#!/bin/bash

if [[ $( pgrep cmus ) ]]
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	if [[ "$status" = *playing*  ]]
	then
		echo -ne " %{F1a9767} "
	elif [[ "$status" = *paused* ]]
	then
		echo -ne " %{F#1a9767} "
	elif [[ "$status" = *stopped* ]]
	then
		echo -ne " %{F#1a9767} "
	fi
else
	echo -ne ""
fi
