#!/bin/bash

# Prints out the date

PREFIX_DATE=''

get_date()
{
	echo "$PREFIX_DATE $(date "+%m-%d(%a)")"
}

get_date
