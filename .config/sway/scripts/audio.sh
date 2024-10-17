#!/bin/bash

# tofi volume control menu 

muted=$(pactl get-sink-mute @DEFAULT_SINK@)

if [ "$muted" = "Mute: no" ]; then
  mute="Mute"
else
  mute="Unmute"
fi

options="Change Volume\n$mute"
selection=$(printf "$options" | tofi --prompt-text="󰝚 ")

if [ "$selection" = "Mute" ]; then
  pactl set-sink-mute @DEFAULT_SINK@ 1
elif [ "$selection" = "Unmute" ]; then
  pactl set-sink-mute @DEFAULT_SINK@ 0
elif [ "$selection" = "Change Volume" ]; then
  echo "changing volume"
  volume=$(echo "" | tofi --require-match=false --prompt-text="󰝚 ")
  pactl set-sink-volume @DEFAULT_SINK@ $volume%
fi
