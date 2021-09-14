#!/bin/bash
if [[ -z "$(amixer get Master | grep '\[on\]')" ]]
then
	amixer set Master on
	amixer set Speaker on
else
	amixer set Master off
fi

bash ~/Suckless/scripts/dwmbar.sh

