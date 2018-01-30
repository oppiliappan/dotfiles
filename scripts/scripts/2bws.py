# -*- coding: utf-8 -*-

import os

total = "xprop -root _NET_NUMBER_OF_DESKTOPS | sed -e 's/_NET_NUMBER_OF_DESKTOPS(CARDINAL) = //'"
current = "xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //'"

total = int(os.popen(total).read())
current = int(os.popen(current).read())

wstr = [ '-','-','-','-','-' ]

for i in range(total):
    if i == current:
        wstr[i] = '✕'
    else:
        wstr[i] = '-'

wstr = '  '.join(wstr)
print(wstr)
