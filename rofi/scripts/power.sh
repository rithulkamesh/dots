#! /bin/sh

chosen=$(printf "  Power Off\n  Restart\n  Suspend\n  Hibernate\n󰍃  Log Out" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"  Suspend") systemctl suspend-then-hibernate ;;
	"  Hibernate") systemctl hibernate ;;
	"󰍃  Log Out") pkill -u rithulk;;
	*) exit 1 ;;
esac
