#!/bin/bash

# wallpaper changing script for sway & tofi

folder="$HOME/Pictures/Wallpapers"
config="$HOME/.config/sway/config.d/wallpaper"

if [ ! -d $folder ]; 
  then
    tofi "Missing directory $HOME/Pictures/Wallpapers"
  exit 1
fi

file=$(ls $folder | tofi --prompt-text=" ")

if [ -f "$folder/$file" ]; then
  echo "output * bg $folder/$file fill" > $config
  swaymsg output "*" bg $folder/$file fill
fi

