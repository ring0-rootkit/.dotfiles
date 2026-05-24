#!/usr/bin/env bash
# Toggle a grayscale screen shader in Hyprland.
# Usage: grayscale.sh on|off|auto
set -euo pipefail

SHADER="$HOME/.config/hypr/shaders/grayscale.frag"

if [ -z "${HYPRLAND_INSTANCE_SIGNATURE:-}" ]; then
    sig=$(ls -t "/run/user/$(id -u)/hypr/" 2>/dev/null | grep -v '\.lock$' | head -1 || true)
    if [ -z "$sig" ]; then
        echo "no running Hyprland instance found" >&2
        exit 0
    fi
    export HYPRLAND_INSTANCE_SIGNATURE="$sig"
fi

apply_on()  { hyprctl keyword decoration:screen_shader "$SHADER" >/dev/null; }
apply_off() { hyprctl keyword decoration:screen_shader '[[EMPTY]]' >/dev/null; }

case "${1:-auto}" in
    on)  apply_on ;;
    off) apply_off ;;
    auto)
        h=$(date +%-H)
        if [ "$h" -ge 21 ] || [ "$h" -lt 5 ]; then
            apply_on
        else
            apply_off
        fi
        ;;
    *) echo "usage: $0 on|off|auto" >&2; exit 2 ;;
esac
