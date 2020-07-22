#! /usr/bin/env bash


fg="$(get_xres color15)"
fg_light="$(get_xres color10)"
bg="$(get_xres color0)"
# %{F$fg} $(date +%d/%m) %{F$fg_light} $(date +%Y)

(while true; do echo -e "\n$(date +%H)\n$(date +%M)\n"; sleep 10; done) | dzen2 \
    -e "onstart=uncollapse;" \
    -fg "$fg" \
    -bg "$fg_light" \
    -tw 0 \
    -l 3 \
    -x 20 \
    -y 600 \
    -w 70 \
    -h 30 \
    -sa c \
    -p &

(echo -e "\n"; while true; do echo -e "$(bat -i)"; sleep 1; done )| dzen2 \
    -e "onstart=uncollapse;" \
    -fg "$fg" \
    -bg "$fg_light" \
    -tw 70 \
    -l 4 \
    -x 20 \
    -y 500 \
    -w 70 \
    -h 15 \
    -sa c \
    -p &

ws=$( xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //' )

# colors
current="$( ~/scripts/get_xres color5 )"
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
            echo -ne "^($current)O"
        else
            if [[ $windows -eq 0 ]]
            then
                echo -ne "^($unoccupied)o"
            else
                echo -ne "^($occupied)x"
            fi
        fi
    done
}

# echo -e "\n\n$(draw)\n" | dzen2 \
#     -e "onstart=uncollapse;" \
#     -fg "$fg" \
#     -bg "$fg_light" \
#     -tw 70 \
#     -l 4 \
#     -x 20 \
#     -y 500 \
#     -w 70 \
#     -h 15 \
#     -sa c \
#     -p &
