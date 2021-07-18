#!/usr/bin/env bash

theme="nord"
dir="$HOME/.config/bspwm/rofi/launcher"

# Fix for keyboard-locking bug
sleep 0.1

# Launcher
rofi -no-lazy-grab \
     -theme $dir/$theme \
     -lines 8 \
     -modi run,drun,window \
     -show drun \
     -show-icons \
     -sidebar-mode
