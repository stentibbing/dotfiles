options="Lock\nExit\nSuspend\nReboot\nPower off"
selection=$(printf "$options" | tofi --prompt-text="󱐋 ")

printf "$selection"

if [ "$selection" = "Lock" ]; then
  swaylock
  exit 1
elif [ "$selection" = "Exit" ]; then
  swaymsg "exit"
  exit 1
elif [ "$selection" = "Suspend" ]; then
  systemctl suspend
  exit 1
elif [ "$selection" = "Reboot" ]; then
  systemctl reboot 
  exit 1
elif [ "$selection" = "Power off" ]; then
  systemctl poweroff
  exit 1
fi


