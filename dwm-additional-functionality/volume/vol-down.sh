#!/bin/bash
# sudo pacman -S alsa-utils
/usr/bin/amixer -qM set Master 5%- umute
# pactl set-sink-volume @DEFAULT_SINK@ -3%
bash ~/Suckless/scripts/dwmbar.sh
