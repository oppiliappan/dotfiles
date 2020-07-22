#!/usr/bin/env bash

fg="$(get_xres color15)"
fg_light="$(get_xres color8)"
# %{F$fg} $(date +%d/%m) %{F$fg_light} $(date +%Y)
echo -ne "$(date +%p)    $(date +%I:%M)"
