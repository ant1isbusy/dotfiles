#!/usr/bin/env bash

STATE_FILE="$HOME/.config/hypr/.monitor_state"
CURRENT_STATE=$(cat "$STATE_FILE" 2>/dev/null || echo "0")

case "$CURRENT_STATE" in
0)
  # Laptop only
  hyprctl keyword monitor "eDP-2,2560x1600@60.0,auto,1.25"
  hyprctl keyword monitor "HDMI-A-1,disable"
  echo 1 >"$STATE_FILE"
  notify-send "Display Mode: Laptop Only"
  ;;
1)
  # Dual display (extend)
  hyprctl keyword monitor "eDP-2,2560x1600@60.0,0x1440,1.25"
  hyprctl keyword monitor "HDMI-A-1,2560x1440@74.97,0x0,1.0"
  echo 2 >"$STATE_FILE"
  notify-send "Display Mode: Extended"
  ;;
2)
  # External only
  hyprctl keyword monitor "eDP-2,disable"
  hyprctl keyword monitor "HDMI-A-1,preferred,auto,1"
  echo 0 >"$STATE_FILE"
  notify-send "Display Mode: External Only"
  ;;
esac
