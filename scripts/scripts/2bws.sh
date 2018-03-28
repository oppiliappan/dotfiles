#!/bin/bash

ws=$( xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //' )

ws=$(( $ws + 1 ))

draw(){
	for i in {1..5}; do
		if [[ $i -eq $ws ]]
		then
			echo -ne "%{F#8ec07c}  ♦"
		else
			echo -ne "%{F#666666}  ∙"
		fi
	done
}

draw
