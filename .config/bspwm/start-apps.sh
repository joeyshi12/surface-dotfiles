#! /bin/bash

# Notifications
killall dunst

# Keyboard shortcuts
sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

# Polybar
~/.config/bspwm/polybar/launch.sh --blue

# Restore cursor theme
xsetroot -cursor_name left_ptr &

# Restore wallpaper
feh --bg-fill ~/.config/bspwm/wallpapers/blue.png

# Compositor
picom --experimental-backends --config ~/.config/bspwm/picom/picom.conf
