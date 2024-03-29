#!/bin/bash

# Prints out the volume percentage

VOLUME_ON_ICON=' '
VOLUME_MUTED_ICON='×'

get_volume(){
        active_sink=$(pacmd list-sinks | awk '/* index:/{print $3}')
        curStatus=$(pacmd list-sinks | grep -A 15 "index: $active_sink$" | awk '/muted/{ print $2}')
        volume=$(pacmd list-sinks | grep -A 15 "index: $active_sink$" | grep 'volume:' | grep -E -v 'base volume:' | awk -F : '{print $3}' | grep -o -P '.{0,3}%'| sed s/.$// | tr -d ' ')

        if [ "${curStatus}" = 'yes' ]
        then
            echo "$VOLUME_MUTED_ICON$volume%"
        else
            echo "$VOLUME_ON_ICON$volume%"
        fi
}

get_volume
