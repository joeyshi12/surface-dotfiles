#!/usr/bin/env bash

# Add this script to your wm startup file.

dir="$HOME/.config/bspwm/polybar/material"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q main -c $dir/config.ini &
