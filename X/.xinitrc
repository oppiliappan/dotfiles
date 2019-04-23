#!/bin/sh

xsetroot -cursor_name left_ptr &
xrdb -load ~/.Xresources
setxkbmap -option caps:escape

urxvtd &

compton &
dunst -config "$HOME"/.config/dunst/dunstrc &
sxhkd -c "$HOME"/.config/sxhkd/sxhkdrc &
feh --bg-fill "~/pics/walls/corinne-kutz-217502-unsplash.jpg"

exec 2bwm
