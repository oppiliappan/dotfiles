#!/usr/bin/python

import os

Cmd = os.popen('cmus-remote -Q | grep status').read()
Cmd = Cmd[7:len(Cmd) - 1]

if Cmd == "playing":
    print('')
elif Cmd == "paused":
    print('')
else:
    print('  ')
