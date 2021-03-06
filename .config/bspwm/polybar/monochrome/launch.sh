#!/usr/bin/env sh

dir="$HOME/.config/bspwm/polybar/monochrome"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch
polybar main -c $dir/config.ini &
