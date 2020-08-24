#!/bin/sh

xsetroot -cursor_name left_ptr &
xrdb -load ~/.Xresources

compton &
dunst -config "$HOME"/.config/dunst/dunstrc &
sxhkd -c "$HOME"/.config/sxhkd/sxhkdrc &

/home/np/.fehbg

urxvtd &
exec 2bwm
