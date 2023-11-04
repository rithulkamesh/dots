#!/bin/bash

get_backlight() {
	echo $(brightnessctl -m | cut -d, -f4)
}

notify_user() {
    current=$(get_backlight | sed 's/%//')
	notify-send -h string:x-canonical-private-synchronous:sys-notify -u low "Brightness : $current%"
}

change_backlight() {
	brightnessctl set "$1" && notify_user
}

case "$1" in
	"--get")
		get_backlight
		;;
	"--inc")
		change_backlight "+10%"
		;;
	"--dec")
		change_backlight "10%-"
		;;
	*)
		get_backlight
		;;
esac

