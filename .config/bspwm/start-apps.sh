#! /bin/bash

# Keyboard shortcuts
sxhkd -c ~/.config/bspwm/apps/sxhkd/sxhkdrc &

# Polybar
~/.config/bspwm/apps/polybar/launch.sh

# Restore cursor theme
xsetroot -cursor_name left_ptr &

# Restore wallpaper
feh --bg-fill ~/Pictures/wallpapers/monochrome.png

# Compositor
picom --experimental-backends --config ~/.config/bspwm/apps/picom/picom.conf
