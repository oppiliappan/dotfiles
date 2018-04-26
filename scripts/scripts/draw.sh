#!/usr/bin/env bash
# Spawn terminals interactively
# Requires slop, urxvt

read -r X Y W H < <(slop -f "%x %y %w %h" -b 4 -c 0.8,0.8,0.8,0.8 -t 0 )
(( W /= 6 ))
(( H /= 15 ))

g=${W}x${H}+${X}+${Y}

urxvtc -geometry $g
