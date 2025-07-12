#!/usr/bin/env bash

EXTENSION="$1"

WALLPAPER_DIR="$HOME/.config/hypr/wallpapers/$EXTENSION"

CURRENT_WALL=$(basename $(swww query | awk '{print $8}'))

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

swww img "$WALLPAPER" --transition-type=outer --transition-pos=0.8,0.9
