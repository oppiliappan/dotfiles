#!/usr/bin/env bash

status=$( nmcli | awk '{ print $2 }' | grep connected )

if [ $status = "connected" ]
then
	echo ''
else
	echo ''
fi
