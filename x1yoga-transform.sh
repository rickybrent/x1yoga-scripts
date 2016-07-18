#!/bin/bash
export XAUTHORITY=`ls -1 /home/*/.Xauthority | head -n 1`
export DISPLAY=":`ls -1 /tmp/.X11-unix/ | sed -e s/^X//g | head -n 1`"
export USER="`stat -c '%U' $XAUTHORITY`"

sudo -H -u $USER xdotool key XF86RotateWindows


