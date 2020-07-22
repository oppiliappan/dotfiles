#!/usr/bin/env bash

folder=$( cmus-remote -Q | grep -w file | sed 's/file //' )
cover=${folder%/*}/cover.png

convert "$cover" -resize 200x200 ~/tmp/cover.png

if pgrep n30f > /dev/null
then
	pkill n30f
	n30f -x 20 -y 700 ~/tmp/cover.png -c "hidebars.sh -h" -d
else
	n30f -x 20 -y 700 ~/tmp/cover.png -c "hidebars.sh -h" -d
fi
