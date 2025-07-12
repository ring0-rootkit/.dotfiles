#!/bin/bash

IS_GIF=false
ACTIVE_WALLPAPER=$(swww query)
if [[ "$ACTIVE_WALLPAPER" == *.gif ]]; then
  IS_GIF=true
fi

while true; do
  bat_status=$(cat /sys/class/power_supply/BAT0/status)
  if [[ "$IS_GIF" = true && "$bat_status" == "Discharging" ]]; then
    IS_GIF=false
    ~/.config/hypr/wallpapers/randomizer.sh img
  fi
  if [[ "$IS_GIF" = false && "$bat_status" != "Discharging" ]]; then
    IS_GIF=true
    ~/.config/hypr/wallpapers/randomizer.sh gif
  fi
  sleep 10
done
