#!/usr/bin/python

import os
import subprocess

Cmd = os.popen('cmus-remote -Q | grep status').read()

output = ""

if Cmd.startswith( 'status stop' ) == True:
	output = ""
else:
	title = os.popen("cmus-remote -Q | grep tag\ title\ ").read()
	title = title[10:len(title) - 1]
	
	artist = os.popen("cmus-remote -Q | grep tag\ artist\ ").read()
	artist = artist[11:len(artist) - 1]

	position = os.popen("cmus-remote -Q | grep position ").read()
	position = position[8:len(position) - 1]
	position = int(position)
	posmin   = position/60
	possec   = position%60

	duration = os.popen("cmus-remote -Q | grep duration ").read()
	duration = duration[9:len(duration) - 1]
	duration = int(duration)
	durmin   = duration/60
	dursec   = duration%60
	
	output = ( str(posmin).zfill(2) + ":" + str(possec).zfill(2) +    # time elapsed
		" / " + str(durmin).zfill(2) + ":" + str(dursec).zfill(2) +   # duration of song
		"   " + title + " - " + artist )                              # song details
	print(output)
