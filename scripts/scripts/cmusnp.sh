#!/usr/bin/env bash
# Display currently playing song from cmus
# Requires cmus

# colors
active="$( get_xres color7 )"
inactive="$( get_xres color11 )"

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
	np_string=$( trunc 25 "$np_string" )

	spc=$(( $(( 32 - ${#np_string} ))/2 ))
	spc="$( printf "%${spc}s" )"

	if [[ "$status" = *playing* ]]
	then
		echo "$spc%{F${active}}$np_string$spc"
	elif [[ "$status" = *paused* ]]
	then
		echo "$spc%{F${inactive}}$np_string$spc"
	elif [[ "$status" = *stopped* ]]
	then
		echo "%{F${inactive}}stopped"
	fi

else
	echo 
fi
