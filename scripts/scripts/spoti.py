#!/usr/bin/python 

import os

cmd = os.popen('playerctl -p spotify status').read()
cmd = cmd.split('\n')
cmd = cmd[0]

meta_artist = os.popen('playerctl -p spotify metadata xesam:artist').read()
meta_title = os.popen('playerctl -p spotify metadata xesam:title').read()

if cmd == "Playing":
    print(meta_title + ' - ' + meta_artist)
elif cmd == 'Paused':
    print(meta_title + ' - ' + meta_artist)

