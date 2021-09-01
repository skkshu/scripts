#!/bin/bash

ss_folder="~/Pictures/screenshots"

if [ ! -d "$ss_folder" ]
then
	mkdir "$ss_folder"
fi

scrot -e 'mv $f ~/Pictures/screenshots'
