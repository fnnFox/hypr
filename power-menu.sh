#!/bin/sh

choice=$(printf "Lock\nSuspend\nLogout\nReboot\nPoweroff" | rofi -dmenu -case-smart -p "System control")

case "$choice" in
	Lock) loginctl lock-session ;;
	Suspend) systemctl suspend ;;
	Logout) hyprctl logout ;;
	Reboot) systemctl reboot ;;
	Poweroff) systemctl poweroff ;;
esac
