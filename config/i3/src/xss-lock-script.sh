#!/bin/bash

# set screensaver after 5 minutes of inactivity
# launch i3lock-script.sh once it's fired

# set cycle timer after screensaver to 10 minutes 
# exec systemctl suspend once it's fired

xset s 300 600 
xss-lock -n $HOME/.config/i3/src/i3lock-script.sh -- systemctl suspend

