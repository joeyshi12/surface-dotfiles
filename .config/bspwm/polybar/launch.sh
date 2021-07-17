#!/usr/bin/env bash

dir="$HOME/.config/bspwm/polybar"
themes=(`ls --hide="launch.sh" $dir`)

launch_bar() {
	# Terminate already running bar instances
	killall -q polybar

	# Wait until the processes have been shut down
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

	# Launch the bar
    polybar -q main -c "$dir/$style/config.ini" &
}

if [[ "$1" == "--monochrome" ]]; then
	style="monochrome"
	launch_bar
elif [[ "$1" == "--shades" ]]; then
	style="shades"
	launch_bar
elif [[ "$1" == "--material" ]]; then
	style="material"
	launch_bar
fi
