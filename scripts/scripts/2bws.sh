#!/usr/bin/env bash
# display workspace status
# requires wmctrl

# get the current workspace
ws=$( xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //' )

# icons

CURRENT=∙
OCCUPIED=∙
UNOCCUPIED=⋅

# colors
accent="#70a070"
normal="#5c5c5c"

#  print workspaces to stdout
draw() {
	for i in {0..5}; do
		# get the number of windows in each workspace
		windows=$( wmctrl -l | cut -d ' ' -f3 | grep $i | wc -l )

		if [[ $i -eq $ws ]]
		then
			# current workspace
			echo -ne "%{F${accent}} ${CURRENT}  "
		else
			if [[ $windows > 0 ]]
			then
				# occupied workspace
				echo -ne "%{F${normal}} ${OCCUPIED}  "
			else
				# unoccupied workspace
				echo -ne "%{F${normal}} ${UNOCCUPIED}  "
			fi
		fi
	done
}

draw
