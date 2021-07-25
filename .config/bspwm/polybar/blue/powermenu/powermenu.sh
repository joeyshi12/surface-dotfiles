#!/bin/bash

theme="powermenu"
dir="$HOME/.config/bspwm/polybar/blue/powermenu"

rofi_command="rofi -theme $dir/$theme"

uptime=$(uptime -p | sed -e 's/up //g')

# Options
lock=" Lock"
suspend=" Sleep"
logout=" Logout"
reboot=" Restart"
shutdown=" Shutdown"

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -p "System" -dmenu -selected-row 0)"
case $chosen in
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
    $reboot)
        systemctl reboot
        ;;
    $shutdown)
        systemctl poweroff
        ;;
esac

