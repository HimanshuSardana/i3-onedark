#!/bin/bash

DIRECTORY="$HOME/Downloads/Wallpapers"

file=$(find "$DIRECTORY" -type f -exec file --mime {} + | awk -F: '$2 ~ /image\// {print $1}' | xargs -I{} basename {} | rofi -dmenu -i -p "Select Image:")

if [ -n "$file" ]; then
    wal -i "$DIRECTORY/$file"
fi

