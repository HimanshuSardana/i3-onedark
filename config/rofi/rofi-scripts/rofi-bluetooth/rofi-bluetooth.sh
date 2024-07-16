#!/bin/bash

devices=$(bluetoothctl devices | while read -r line; do
    mac=$(echo "$line" | awk '{print $2}')
    name=$(echo "$line" | awk '{print substr($0, index($0,$3))}')
    connected=$(bluetoothctl info "$mac" | grep "Connected" | awk '{print $2}')
    if [ "$connected" == "yes" ]; then
        echo "$mac $name (Connected)"
    else
        echo "$mac $name"
    fi
done)

if [ -z "$devices" ]; then
    notify-send "No Bluetooth devices found."
    exit 1
fi

selected_device=$(echo "$devices" | rofi -dmenu -i -p "Select Bluetooth device")

if [ -z "$selected_device" ]; then
    exit 1
fi

device_mac=$(echo "$selected_device" | awk '{print $1}')
device_name=$(echo "$selected_device" | awk '{print substr($0, index($0,$3))}')

connected=$(bluetoothctl info "$device_mac" | grep "Connected" | awk '{print $2}')

if [ "$connected" == "yes" ]; then
    disconnect=$(echo -e "Yes\nNo" | rofi -dmenu -i -p "Disconnect from $device_name?")
    if [ "$disconnect" == "Yes" ]; then
        bluetoothctl disconnect "$device_mac"
        if [ $? -eq 0 ]; then
            notify-send "Disconnected from $device_name"
        else
            notify-send "Failed to disconnect from $device_name"
        fi
    fi
else
    bluetoothctl connect "$device_mac"
    if [ $? -eq 0 ]; then
        notify-send "Connecting to $device_name"
    else
        notify-send "Failed to connect to $device_name"
    fi
fi

