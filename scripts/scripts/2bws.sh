#!/bin/bash

ws=$( xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //' )

ws=$(( $ws + 1 ))

draw(){
	for i in {1..5}; do
		if [[ $i -eq $ws ]]
		then
			echo -ne "%{F#7f941a} ♦"
		else
			echo -ne "%{F#666666} ∙"
		fi
	done
}

draw
