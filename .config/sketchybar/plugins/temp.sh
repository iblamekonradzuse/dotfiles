#!/bin/bash
# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

TEMP=`curl -s "https://wttr.in/paderborn?format=1" | sed 's/ // ' `
echo $TEMP

sketchybar --set $NAME label="${TEMP}" \
	   --set $NAME click_script="/usr/bin/open /System/Applications/Weather.app"

