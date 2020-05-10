#!/bin/bash

# Prints the percentage of the day that has been completed

PREFIX=' '

get_daypercentage()
{
		MINUTES="$[$(date +%k | cut -d ':' -f1) * 60 + $(date +%k | cut -d ':' -f2) ]"
		echo "$PREFIX$(echo $[ $MINUTES * 100 / 1440 ]  | sed 's/\..*//g')%"
}

get_daypercentage
