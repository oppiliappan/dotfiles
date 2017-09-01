#!usr/bin/python

import os
cmd = os.popen('playerctl -p spotify status').read()
cmd = cmd.split('\n')
cmd = cmd[0]

if cmd == "Playing":
     print('')
elif cmd == 'Paused':
     print('')
else:
    print('  ')
                 
