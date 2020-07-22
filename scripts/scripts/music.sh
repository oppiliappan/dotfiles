#!/usr/bin/env bash

while getopts abt options
do
	case $options in
		a)
            cmus-remote -Q | grep tag\ artist\ | sed 's/tag artist //'
			;;
		b)
            cmus-remote -Q | grep tag\ album\ | sed 's/tag album //'
			;;
        t)
            cmus-remote -Q | grep tag\ title\ | sed 's/tag title //'
			;;
	esac
done
