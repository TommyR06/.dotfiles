#!/usr/bin/env bash

# This file is launched by your WM at start-up to initialize polybar

# Terminate already running bar instances
killall -q polybar

# Wait util the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar <mainbar-i3> (you can lanch more bars for other display)
polybar mainbar-i3 >>/tmp/polybar-mainbar-i3.log 2>&1 &

