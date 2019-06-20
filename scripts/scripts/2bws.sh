#!/usr/bin/env bash
# display workspace status
# requires wmctrl

# get the current workspace
ws=$( xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //' )

# icons
CURRENT=●
OCCUPIED=●
UNOCCUPIED=·

# colors
current="$( ~/scripts/get_xres color2 )"
occupied="$( ~/scripts/get_xres color8 )"
unoccupied="$( ~/scripts/get_xres color8 )"

#  print workspaces to stdout
draw() {
    for i in {0..5}; do
        # get the number of windows in each workspace
        windows=$( wmctrl -l | cut -d ' ' -f3 | grep $i | wc -l )


        if [[ $i -eq $ws ]]
        then
            # current workspace
            echo -ne "%{F$current}  $CURRENT  "
        else
            if [[ $windows -eq 0 ]]
            then
                echo -ne "%{F$unoccupied}  $UNOCCUPIED  "
            else
                echo -ne "%{F$occupied}  $OCCUPIED  "
            fi
        fi
    done
}

draw
