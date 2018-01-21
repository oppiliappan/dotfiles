#!/usr/bin/python

import os

titlenf = os.popen("cmus-remote -Q format-print | grep tag\ title\ ").read()
titlef  = titlenf[10:len(titlenf) - 1]

artistnf = os.popen("cmus-remote -Q format-print | grep tag\ artist\ ").read()
artistf  = artistnf[11:len(artistnf) - 1]

output = titlef + " - " + artistf

print(output)
