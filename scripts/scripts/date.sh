#!/usr/bin/env bash

case $( date +%u ) in
	1) echo -n "Mon";;
	2) echo -n "Tue";;
	3) echo -n "Wed";;
	4) echo -n "Thu";;
	5) echo -n "Fri";;
	6) echo -n "Sat";;
	7) echo -n "Sun";;
esac

day_of_month=$( date +%d  )
month_short=$( date +%b )

echo -n ", ${day_of_month} ${month_short} "
