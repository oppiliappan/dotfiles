#!/bin/bash

duration=2

offsetx=32
offsety=570

n30f -x $offsetx -y $offsety ~/scripts/popups/bg.png -c ~/scripts/killpop.sh &
sleep 0.2
n30f -x $offsetx -y $offsety ~/scripts/popups/gitgraph.png -c ~/scripts/killpop.sh &

python3.5 ~/scripts/gitscrape.py
sleep $duration

pkill n30f
