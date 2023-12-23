#!/usr/bin/env bash

# This script will start or restart waybar and also make sure that waybar is only visible on the primary monitor.

# Terminate already running bar instances
killall -q waybar

check() {
	command -v "$1" >/dev/null 2>&1
}

notify() {
	check notify-send && notify-send "$@" || echo "$@"
}

check hyprctl || {
	notify "hyprctl is not present"
	exit 1
}

setsid waybar &>/dev/null &
