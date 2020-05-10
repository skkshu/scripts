#!/bin/bash

/usr/bin/amixer -qM set Master 5%- umute
# pactl set-sink-volume @DEFAULT_SINK@ -3%
bash ~/Suckless/scripts/dwmbar.sh
