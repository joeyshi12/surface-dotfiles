#!/usr/bin/env bash

theme="nord"
dir="$HOME/.config/bspwm/apps/rofi/launcher"

rofi -theme $dir/$theme \
     -lines 10 \
     -modi run,drun,window \
     -show drun \
     -show-icons \
     -sidebar-mode
