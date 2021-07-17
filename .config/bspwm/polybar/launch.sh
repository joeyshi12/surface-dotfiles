#!/usr/bin/env bash

dir="$HOME/.config/bspwm/polybar"
themes=(`ls --hide="launch.sh" $dir`)

case $1 in
  --monochrome)
    $dir/monochrome/launch.sh
    ;;

  --shades)
    $dir/shades/launch.sh
    ;;

  --material)
    $dir/material/launch.sh
    ;;

  --blue)
    $dir/blue/launch.sh
    ;;

  *)
    echo "invalid style"
    ;;
esac

