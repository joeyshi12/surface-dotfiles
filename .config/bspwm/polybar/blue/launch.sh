#!/usr/bin/env sh

dir="$HOME/.config/bspwm/polybar/blue"

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch left bars
polybar logo -c $dir/config.ini &
polybar date -c $dir/config.ini &
polybar apps -c $dir/config.ini &

## Launch workspaces bar
polybar workspaces -c $dir/config.ini &

## Launch right bars
polybar info -c $dir/config.ini &
polybar powermenu -c $dir/config.ini &
