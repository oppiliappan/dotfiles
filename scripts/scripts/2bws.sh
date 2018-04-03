#!/usr/bin/env bash

ws=$( xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //' )

ws=$(( $ws + 1 ))

draw(){
	for i in {1..5}; do
		if [[ $i -eq $ws ]]
		then
			echo -ne "%{F#70a070}  ♦"
		else
			echo -ne "%{F#3a3a3a}  ∙"
		fi
	done
}

draw
