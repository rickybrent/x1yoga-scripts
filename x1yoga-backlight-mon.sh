#!/bin/sh
path=/sys/class/backlight/intel_backlight

luminance() {
    read -r level < "$path"/actual_brightness
    factor=$((max / 100))
    ret=`printf '%d\n' "$((level / factor))"`
    if [ $ret -gt 100 ]; then
       ret=100
    fi
    printf `echo "$ret / 100" | bc -l`
}

read -r max < "$path"/max_brightness
xrandr --output eDP1 --brightness "$(luminance)"


inotifywait -me modify --format '' "$path"/actual_brightness | while read -r directory events filename; do
    xrandr --output eDP1 --brightness "$(luminance)"
done

