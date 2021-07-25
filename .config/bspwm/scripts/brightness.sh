#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down

function get_brightness {
    xbacklight | cut -d '.' -f 1
}

function send_notification {
    brightness=`get_brightness`
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $((1 + $brightness / 5)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify -t 1000 -r 2593 -u normal "  $bar"
}

case $1 in
    up)
	# Up the brightness (+ 5%)
	xbacklight -inc 5 > /dev/null
	send_notification
	;;
    down)
	xbacklight -dec 5 > /dev/null
	send_notification
	;;
esac
