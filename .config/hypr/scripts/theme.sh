#!/bin/sh

THEME="$1"

if [ "$THEME" = "light" ]; then
    gsettings set org.gnome.desktop.interface gtk-theme Adwaita 
    gsettings set org.gnome.desktop.interface color-scheme prefer-light
    cp ~/.config/wofi/light.css ~/.config/wofi/style.css
    cp ~/.config/mako/light ~/.config/mako/config
    cp ~/.config/waybar/light-style.css ~/.config/waybar/current-style.css
    cp ~/.config/ghostty/light ~/.config/ghostty/current
    cp ~/.config/hypr/dawn.conf ~/.config/hypr/current.conf
    # uncomment when ghostty is updated to needed version
    # kill -USR2 $(pidof ghostty)
    kill -USR2 $(pidof waybar)
    killall mako
elif [ "$THEME" = "dark" ]; then
    gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark 
    gsettings set org.gnome.desktop.interface color-scheme prefer-dark
    cp ~/.config/wofi/dark.css ~/.config/wofi/style.css
    cp ~/.config/mako/dark ~/.config/mako/config
    cp ~/.config/waybar/dark-style.css ~/.config/waybar/current-style.css
    cp ~/.config/ghostty/dark ~/.config/ghostty/current
    cp ~/.config/hypr/moon.conf ~/.config/hypr/current.conf
    # uncomment when ghostty is updated to needed version
    # kill -USR2 $(pidof ghostty)
    kill -USR2 $(pidof waybar)
    killall mako
else
    echo "Invalid theme"
    exit 1
fi
