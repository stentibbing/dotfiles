#!/bin/sh
#

options=("<span></span>")

source $HOME/.config/bemenu/theme.sh
echo -e $options | bemenu --fn "RobotoMono Nerd Font Mono 10" -H 24 -l 10 -p "" $theme 
