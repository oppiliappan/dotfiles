#!/usr/bin/env bash
read -r X Y W H < <(slop -f "%x %y %w %h" -b 4 -c 0.8,0.8,0.8,0.8 -t 0 )
# Width and Height in px need to be converted to columns/rows
# To get these magic values, make a fullscreen st, and divide your screen width by ${tput cols}, height by ${tput lines} 
(( W /= 6 ))
(( H /= 15 ))

g=${W}x${H}+${X}+${Y}

urxvtc -geometry $g
