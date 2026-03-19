#!/bin/bash

# backlight device
BL=/sys/class/backlight/intel_backlight/brightness
MAX=$(cat /sys/class/backlight/intel_backlight/max_brightness)

case "$1" in
   close)
     echo 0 > $BL
     ;;
   open)
     echo $MAX > $BL
    ;;
esac
