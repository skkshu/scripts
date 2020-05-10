#!/bin/bash

# picom -b
/bin/bash ~/Suckless/scripts/run-dwmbar.sh &
/bin/bash ~/Suckless/scripts/dwm-additional-functionality/wallpaper/wp-autochange.sh &
xfce4-power-manager &
xfce4-volumed-pulse &
nm-applet &
qv2ray &
~/Suckless/scripts/autostart_wait.sh &

#picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
#picom --active-opacity 0.96 -i 0.7 --detect-rounded-corners --blur-background-fixed -f -D 5 -c -b
# /usr/lib/gsd-xsettings &
#electron-ssr &
