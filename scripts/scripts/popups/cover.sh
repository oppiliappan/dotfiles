#!/usr/bin/env bash

folder=$( cmus-remote -Q | grep -w file | sed 's/file //' )
cover=${folder%/*}/cover.png

convert "$cover" \
    -resize 350x350 \
    \( +clone -threshold -1 -negate -fill white -draw "circle 175,175 175,20" \) \
    -alpha off -compose copy_opacity -composite -background $( get_xres color0 ) -alpha remove ~/tmp/cover.png

if pgrep n30f > /dev/null
then
	pkill n30f
	n30f -x 40 -y 505 ~/tmp/cover.png -d
else
	n30f -x 40 -y 505 ~/tmp/cover.png -d
fi
