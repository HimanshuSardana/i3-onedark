#!/bin/bash

# Scan for Wi-Fi networks
networks=$(nmcli -t -f SSID,SECURITY dev wifi | grep -v -- '^\s*$' | sort -u)

# Use rofi to select a network
chosen_network=$(echo "$networks" | rofi -dmenu -p "Select Wi-Fi Network" -l 10)

if [ -z "$chosen_network" ]; then
    echo "No network selected."
    exit 1
fi

# Extract the SSID and security type
ssid=$(echo "$chosen_network" | cut -d: -f1)
security=$(echo "$chosen_network" | cut -d: -f2)

# If the network is secured, prompt for a password
if [[ "$security" != "--" ]]; then
    password=$(rofi -dmenu -password -p "Enter password for $ssid")
    if [ -z "$password" ]; then
        echo "No password entered."
        exit 1
    fi
    nmcli dev wifi connect "$ssid" password "$password"
else
    nmcli dev wifi connect "$ssid"
fi

if [ $? -eq 0 ]; then
    notify-send "Connected to $ssid"
else
    notify-send "Failed to connect to $ssid"
fi

