#!/bin/bash

# Prints the percentage of the day that has been completed

PREFIX_DAY=' '

get_day()
{
    MINUTES="$[ $(date +%k | cut -d ':' -f1) * 60 + $(date +%k | cut -d ':' -f2) ]"
		echo $PREFIX_DAY$(echo "scale=0; $MINUTES/14.40" | bc)%
}

get_day
