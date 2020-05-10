#!/bin/bash

# Prints out the current down network traffic in MB

PREFIX_DOWN_TRAFFIC=' '

get_down_traffic()
{
    RECIEVE1=0
    RECIEVE2=0

    IFACES=$(ip -o link show | awk -F': ' '{print $2}')
    for IFACE in $IFACES; do
        if [ $IFACE != "lo" ]; then
            RECIEVE1=$(($(ip -s -c link show $IFACE | tail -n3 | head -n 1 | cut -d " " -f5) + $RECIEVE1))
        fi
    done

    sleep 1

    IFACES=$(ip -o link show | awk -F': ' '{print $2}')
    for IFACE in $IFACES; do
        if [ $IFACE != "lo" ]; then
            RECIEVE2=$(($(ip -s -c link show $IFACE | tail -n3 | head -n 1 | cut -d " " -f5) + $RECIEVE2))
        fi
    done

		result=$(expr $(expr $RECIEVE2 - $RECIEVE1 ) / 1000)
		if [[ "$result" -gt 1024 ]]
		then
			echo $(echo "scale=2; $result/1024" | bc)Mb/s
		else
			echo "$PREFIX_DOWN_TRAFFIC${result}Kb/s"
		fi
}

get_down_traffic
