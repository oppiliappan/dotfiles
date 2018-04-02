#!/usr/bin/env bash

artist=$( cmus-remote -Q | grep tag\ artist\ | sed 's/tag artist //' )
title=$( cmus-remote -Q | grep tag\ title\ | sed 's/tag title //' )
album=$( cmus-remote -Q | grep tag\ album\ | sed 's/tag album //' )

notify-send "${artist}" "${title} - ${album}"
