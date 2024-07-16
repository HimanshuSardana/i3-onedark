
#!/bin/bash

# Path to the emoji list file
EMOJI_LIST="$HOME/.config/rofi/emoji_list.txt"

# Show the rofi menu and capture the selected emoji
SELECTED_EMOJI=$(awk '{print $1}' "$EMOJI_LIST" | rofi -dmenu -i -p "Pick an emoji:")

# Check if an emoji was selected
if [ -n "$SELECTED_EMOJI" ]; then
    # Copy the selected emoji to the clipboard
    echo -n "$SELECTED_EMOJI" | xclip -selection clipboard
    notify-send "Emoji Picker" "Copied $SELECTED_EMOJI to clipboard"
else
    notify-send "Emoji Picker" "No emoji selected"
fi

