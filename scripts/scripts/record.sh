#!/usr/bin/env bash

read -r X Y W H G ID < <(slop -f "%x %y %w %h %g %i")

ffmpeg -s "$W"x"$H" -i 0.0+$X,$Y -f alsa -i pulse ~/${1}.webm
