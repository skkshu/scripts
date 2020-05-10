#!/bin/bash
# ====================================================
#   Copyright (C)2020 All rights reserved.
#
#   Author        : Joey Lee
#   Email         : skkshu@gmail.com
#   File Name     : dwmbar.sh
#   Last Modified : 2020-05-06 18:50
#   Description   : github.com/thytom/dwmbar, the orig project, credit
#
# ====================================================

DIR=/home/$USER/Suckless/scripts/dwmbar

. "$DIR/todo.sh"
. "$DIR/day.sh"
. "$DIR/volume.sh"
. "$DIR/networkdowntraffic.sh"
. "$DIR/battery.sh"
. "$DIR/date.sh"
. "$DIR/sunmoontime.sh"

xsetroot -name "$(get_todo) | $(get_volume) | $(get_day) | $(get_down_traffic) | $(get_battery) | $(get_date)| $(get_sunmoontime)"

exit 0
