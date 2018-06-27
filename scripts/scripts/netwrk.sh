#!/usr/bin/env bash

status=$( nmcli | sed -n 1p | awk '{print $2}' )

if [ $status = "connected" ]
then
	echo ''
else
	echo ''
fi
