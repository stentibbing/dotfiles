#!/bin/bash

# tofi menu for general options

options="Power\nWallpaper\nWifi\nBluetooth"
selection=$(printf "$options" | tofi)

if [ $selection = "Power" ]; then
  $HOME/.config/sway/scripts/power.sh
elif [ $selection = "Wallpaper" ]; then
  $HOME/.config/sway/scripts/wallpaper.sh
fi
