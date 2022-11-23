#!/usr/bin/env bash

chosen=$(printf "  Spegni\n  Riavvia\n  Sospendi" | rofi -dmenu -i -theme-str '@import "power.rasi"' -p "Fai la tua scelta:")

case "$chosen" in
	"  Spegni") poweroff ;;
	"  Riavvia") reboot ;;
	" Sospendi") systemctl suspend ;;
	*) exit 1 ;;
esac
