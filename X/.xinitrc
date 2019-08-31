#!/bin/sh

xsetroot -cursor_name left_ptr &
xrdb -load ~/.Xresources
setxkbmap -option caps:escape
setxkbmap -option compose:rctrl

urxvtd &

compton &
dunst -config "$HOME"/.config/dunst/dunstrc &
sxhkd -c "$HOME"/.config/sxhkd/sxhkdrc &

/home/nerdypepper/scripts/restartbars.sh &
feh --bg-fill "/home/nerdypepper/pics/walls/fabian-moller-gI7zgb80QWY-unsplash.jpg"

exec 2bwm
