#!/bin/bash

theme="powermenu"
dir="$HOME/.config/bspwm/polybar/blue/powermenu"

rofi_command="rofi -theme $dir/$theme"

uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
suspend=" Sleep"
logout=" Logout"

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -p "System" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        i3lock
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        bspc quit
        ;;
esac

