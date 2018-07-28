#!/usr/bin/env zsh

pkill polybar

polybar np &
polybar music &
polybar stats &

sleep 0.2
polybar fab &
