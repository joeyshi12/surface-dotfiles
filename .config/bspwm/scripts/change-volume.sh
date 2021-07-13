#!/bin/bash

pulsemixer --change-volume $1
pulsemixer --unmute

volume=$(pulsemixer --get-volume | head -n1 | cut -d " " -f1)
timer=1000
notify-send --hint=string:x-dunst-stack-tag:volume "Volume: $volume" -t $timer
