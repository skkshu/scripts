#!/bin/bash

# Prints out battery percentage

CHARGING_ICON=' '
WARNING_ICON=' '
BATTERY_FULL_ICON=''
BATTERY_2_ICON=''
BATTERY_3_ICON=''
BATTERY_4_ICON=''

FULL_AT=98

BAT_ICON=""
ICON=""

get_battery()
{
	# The vast majority of people only use one battery.

	if [ -d /sys/class/power_supply/BAT0 ]; then
		capacity=$(cat /sys/class/power_supply/BAT0/capacity)
		charging=$(cat /sys/class/power_supply/BAT0/status)
		if [[ "$charging" = "Charging" || "$charging" = "Unknown" ]]; then
			ICON="$CHARGING_ICON"
		elif [[ $capacity -le 25 ]]; then
			ICON="$WARNING_ICON"
		fi

		if [[ $capacity -ge $FULL_AT ]]; then
			BAT_ICON=$BATTERY_FULL_ICON
		elif [[ $capacity -le 25 ]]; then
			BAT_ICON=$BATTERY_4_ICON
		elif [[ $capacity -le 60 ]]; then
			BAT_ICON=$BATTERY_3_ICON
		elif [[ $capacity -le $FULL_AT ]]; then
			BAT_ICON=$BATTERY_2_ICON
		fi
	fi

	if [[ $ICON == "$CHARGING_ICON" ]]; then
		echo "$ICON$capacity%"
	else
		echo "$ICON$BAT_ICON  $capacity%"
	fi
}

get_battery
