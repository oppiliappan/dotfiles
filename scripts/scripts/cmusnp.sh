#!/usr/bin/env bash
# Display currently playing song from cmus
# Requires cmus

# colors
active="$( get_xres color0 )"
inactive="$( get_xres color9)"

np_string=""

trunc() {
    max_length=$1
    text=$2
    length=${#text}
    (( length > max_length )) &&
        text=${text::$(( max_length ))}…
    echo "$text"
}

if pgrep -x "cmus" > /dev/null
then
	status=$( cmus-remote -Q | grep status\ | sed 's/status //' )
	artist=$( cmus-remote -Q | grep tag\ artist\ | sed 's/tag artist //' )
	title=$( cmus-remote -Q | grep tag\ title\ | sed 's/tag title //' )
	np_string="$title - $artist"
	np_string=$( trunc 22 "$np_string" )

	if [[ "$status" = *playing* ]]
	then
		echo "%{F${active}}$np_string"
	elif [[ "$status" = *paused* ]]
	then
		echo "%{F${inactive}}$np_string"
	elif [[ "$status" = *stopped* ]]
	then
		echo "%{F${inactive}}stopped"
	fi

else
	echo 
fi
