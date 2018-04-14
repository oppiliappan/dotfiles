#!/usr/bin/env bash

ws=$( xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //' )


draw(){
	for i in {0..4}; do
		windows=$( wmctrl -l | cut -d ' ' -f3 | grep $i | wc -l )
		if [[ $windows > 0 ]]
		then
			if [[ $i -eq $ws ]]
			then
				echo -ne "%{F#70a070} ▪  "
			else
				echo -ne "%{F#3a3a3a} ▪  "
			fi
		else
			if [[ $i -eq $ws ]]
			then
				echo -ne "%{F#70a070} ▪  "
			else
				echo -ne "%{F#3a3a3a} ▫  "
			fi
		fi
	done
}

draw
#		if [[ $i -eq $ws ]]
#		then
#			echo -ne "%{F#70a070}  ♦"
#		else
#			echo -ne "%{F#3a3a3a}  ∙"
#		fi
