#! /usr/bin/env bash

month="$(date +%B)"
printf "%s $(date +%e) $(date +%Y)" "${month^^}"
