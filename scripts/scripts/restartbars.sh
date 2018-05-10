#!/usr/bin/env bash

pkill polybar

polybar ws &
polybar date &
polybar music &

sleep 0.2
polybar fab &
