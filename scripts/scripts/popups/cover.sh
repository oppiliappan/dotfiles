#!/usr/bin/env bash

folder=$( cmus-remote -Q | grep -w file | sed 's/file //' )
cover=${folder%/*}/cover.png

convert "$cover" -resize 350x350 ~/tmp/cover.png

if pgrep n30f > /dev/null
then
	pkill n30f
	n30f -x 77 -y 475 ~/tmp/cover.png -d
else
	n30f -x 77 -y 475 ~/tmp/cover.png -d
fi
