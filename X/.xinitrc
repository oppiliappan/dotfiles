#!/bin/sh

xsetroot -cursor_name left_ptr &
xrdb -load ~/.Xresources
setxkbmap -option caps:escape

urxvtd &

pkill polybar
polybar border &
sleep 0.4
polybar stats &

compton &
dunst -config "$HOME"/.config/dunst/dunstrc &
hsetroot -solid "#264d73"
sxhkd -c "$HOME"/.config/sxhkd/sxhkdrc &

exec 2bwm
