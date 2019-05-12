#!/bin/bash
# read the abbreviation
xdotool key ctrl+shift+Left
sleep 0.1s
xdotool key ctrl+x
sleep 0.2s # to work reliably in Firefox
SELECTION=`xsel -b`
# read snippet file
xsel -b -i < ~/.snippy/${SELECTION}.snip
# paste snippet
xdotool key ctrl+v
xdotool key BackSpace # delete the last blank line, so we stay inline
