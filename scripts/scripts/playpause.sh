#!/bin/bash

status=$( cmus-remote -Q | grep status\ | sed 's/status //' )

if [[ "$status" = *playing*  ]]
then
	echo -ne "%{F#f0696f}"
elif [[ "$status" = *paused* ]]
then
	echo -ne "%{F#f0696f}"
elif [[ "$status" = *stopped* ]]
then
	echo -ne "%{F#f0696f}"
fi
