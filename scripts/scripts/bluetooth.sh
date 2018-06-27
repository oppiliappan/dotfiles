#!/usr/bin/env bash

connections=$( hcitool con )
devices=$( hcitool dev | wc -l )

if [ $devices = 1 ] 
then
	echo -n ""
elif [[ $devices > 1 && $connections = "Connections:" ]]
then
	echo -n ""
else
	echo -n ""
fi
