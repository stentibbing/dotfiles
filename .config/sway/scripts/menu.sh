#!/bin/bash

# tofi menu for general options

options="Wallpaper\nWifi\nBluetooth"
selection=$(printf $options | tofi)

if [ $selection = "Wallpaper" ]; then
  $HOME/.config/sway/scripts/wallpaper.sh
fi
