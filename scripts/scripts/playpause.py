#!usr/bin/python

import os

Cmd = os.popen('playerctl -p spotify status').read()
Cmd = Cmd.split('\n')
Cmd = Cmd[0]

if Cmd == "Playing":
	print('')
elif Cmd == 'Paused':
	print('')
else:
	print('  ')
