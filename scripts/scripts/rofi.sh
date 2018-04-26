#! /usr/bin/env bash

while getopts wr options
do
	case $options in
		r)
			rofi -show run
			;;

		w)
			rofi -show window
			;;
	esac
done
