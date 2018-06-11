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
fg="$( get_xres color0 )"
fg1="$( get_xres color7 )"

accent="$( get_xres color2 )"
normal="$( get_xres color10 )"

#  print workspaces to stdout
draw() {
	for i in {0..5}; do
		# get the number of windows in each workspace
		windows=$( wmctrl -l | cut -d ' ' -f3 | grep $i | wc -l )

		if [[ $i -eq $ws ]]
		then
			# current workspace
			echo -ne "%{B$accent}%{F$fg}  $(( i + 1 ))  %{B-}"
		else
			if [[ $windows > 0 ]]
			then
				# occupied workspace
				echo -ne "%{B$normal}%{F$fg1}  $(( i + 1 ))  %{B-}"
			else
				# unoccupied workspace
				echo -ne "%{F$fg1}  $(( i + 1 ))  "
			fi
		fi
	done
}

draw
