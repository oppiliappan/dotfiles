#!/usr/bin/env bash

hc() { "${herbstclient_command[@]:-herbstclient}" "$@" ;}

IFS=$'\t' read -ra tags <<< "$(hc tag_status $monitor)"

for i in "${tags[@]}" ; do
	case ${i:0:1} in
		'#')
			echo -n "^bg()^fg()"
			;;
		'+')
			echo -n "^bg(#9CA668)^fg(#141414)"
			;;
		':')
			echo -n "^bg()^fg(#ffffff)"
			;;
		'!')
			echo -n "^bg(#FF0675)^fg(#141414)"
			;;
		*)
			echo -n "^bg()^fg(#ababab)"
			;;
	esac
	echo -n " ${i:1} "
done
