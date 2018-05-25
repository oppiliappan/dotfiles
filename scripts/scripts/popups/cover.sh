#!/usr/bin/env bash

folder=$( cmus-remote -Q | grep -w file | sed 's/file //' )
cover=${folder%/*}/cover.png

convert "$cover" -resize 200x200 ~/tmp/cover.png

if pgrep n30f > /dev/null
then
	pkill n30f
	n30f -x 40 -y 405 ~/tmp/cover.png -d
else
	n30f -x 40 -y 405 ~/tmp/cover.png -d
fi
