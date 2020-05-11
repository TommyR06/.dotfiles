#!/bin/bash

# Script executed by i3 to launch a i3lock in background
# -killtime must be 10 minutes minimum
# Note: leave this file in the same dir as lock.sh

xautolock -time 1 -locker /home/tr/.config/i3/lock.sh -killtime 30 -killer "systemctl suspend" &
