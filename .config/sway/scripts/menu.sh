#!/bin/bash

# tofi menu for general options

options="Audio\nPower\nWallpaper\nWifi"
selection=$(printf "$options" | tofi --prompt-text="󰮫 ")

if [ $selection = "Audio" ]; then
  $HOME/.config/sway/scripts/audio.sh
elif [ $selection = "Power" ]; then
  $HOME/.config/sway/scripts/power.sh
elif [ $selection = "Wallpaper" ]; then
  $HOME/.config/sway/scripts/wallpaper.sh
fi
