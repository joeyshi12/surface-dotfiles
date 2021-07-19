#!/usr/bin/env bash

theme="nord"
dir="$HOME/.config/bspwm/rofi/launcher"

# Launcher
rofi -no-lazy-grab \
     -theme $dir/$theme \
     -show drun
