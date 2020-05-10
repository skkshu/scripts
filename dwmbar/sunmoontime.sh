#!/bin/bash

# PREFIX_TIME=' '
SUN_ICON='盛 '
MOON_ICON=' '

get_sunmoontime()
{
	if (( $(date +%_H) < 7 || $(date +%_H) > 18 ))
	then
		echo "$MOON_ICON$(date '+%H:%M')"
	else
		echo "$SUN_ICON$(date '+%H:%M')"
	fi
}

get_sunmoontime
