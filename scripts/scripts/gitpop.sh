#!/bin/bash

duration=2

offsetx=40
offsety=549

n30f -x $offsetx -y $offsety ~/scripts/popups/bg.png -c ~/scripts/killpop.sh &
sleep 0.2
n30f -x $offsetx -y $offsety ~/scripts/popups/gitgraph.png -c ~/scripts/killpop.sh &

source ~/scripts/graphs/bin/activate
python3.5 ~/scripts/gitscrape.py
deactivate
sleep $duration

pkill n30f
