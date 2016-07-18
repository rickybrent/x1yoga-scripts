# x1yoga-scripts
A possibly-temporary collection of scripts to get my X1 Yoga working the way I'd like.

A very *small* collection. 

x1yoga-backlight-mon.sh will use xrandr to dim the screen to match the intel_backlight values, fixing an issues where adjusting the backlight seemed to work but did nothing (adapted from a solution on the arch linux wiki: https://wiki.archlinux.org/index.php/Backlight ).

The acpi event will run x1yoga-transform.sh, which will simulate pressing XF86RotateWindows. Adatped from a solution here: site: http://entrenchant.blogspot.com/2016/02/dispatches-from-x1-front.html

The scripts under volwrapper adjust the volume or, if the screen is rotated and the active window is a pdf (probably), page up/down.



