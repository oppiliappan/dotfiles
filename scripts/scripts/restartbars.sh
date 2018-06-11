#!/usr/bin/env zsh

pkill polybar

polybar ws &
polybar stats &
polybar music &

sleep 0.2
polybar fab &
