#!/bin/bash
# Get a list of windows and their titles
windows=$(hyprctl clients -j | jq -r '.[] | select(.pid != -1) | "\(.address) \(.title)"')

# Pass the list to Rofi
selected=$(echo "$windows" | rofi -dmenu -i -p "Switch Window")

# Extract the address of the selected window
address=$(echo "$selected" | awk '{print $1}')

# Focus the selected window
hyprctl dispatch focuswindow address:$address