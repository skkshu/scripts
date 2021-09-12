#!/bin/sh
id=`xinput list | grep '3 Touchpad' | grep -Po "id=\d\d" | grep -Po "\d\d"`
xinput set-prop ${id} 344 1
