#!/usr/bin/env bash

theme="launcher"
dir="$HOME/.config/bspwm/polybar/material/scripts/rofi"

rofi -no-config \
     -no-lazy-grab \
     -show drun \
     -modi drun \
     -theme $dir/$theme
