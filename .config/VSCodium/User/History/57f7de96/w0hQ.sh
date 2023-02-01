#!/usr/bin/env bash

chosen=$(printf "  Spegni\n  Riavvia\n  Sospendi" | rofi -dmenu -i -theme-str '@import "power.rasi"' -p "Fai la tua scelta:")

case "$chosen" in
	"  Spegni") sudo poweroff ;;
	"  Riavvia") sudo reboot ;;
	" Sospendi") sudo systemctl suspend ;;
	*) exit 1 ;;
esac
