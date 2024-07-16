#!/bin/bash

rofi_command="rofi -dmenu -i -p Option"

shutdown="  Shutdown"
reboot="  Reboot"
lock="  Lock"
wifi="  Wi-Fi"
bluetooth=" Bluetooth"

options="$shutdown\n$reboot\n$lock\n$wifi\n$bluetooth"
selected=$(echo -e "$options" | $rofi_command)

case $selected in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        i3lock
        ;;
$wifi)
	../rofi-wifi/rofi-wifi.sh
	;;
$bluetooth)
	../rofi-bluetooth/rofi-bluetooth.sh
	;;
    *)
        exit 1
        ;;
esac

