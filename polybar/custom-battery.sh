#!/bin/bash

# Battery path for the system (adjust if needed)
BATTERY_PATH="/org/freedesktop/UPower/devices/battery_BAT0"

# Fetch battery status using upower
battery_info=$(upower -i "$BATTERY_PATH")

# Extract the relevant information
battery_state=$(echo "$battery_info" | grep -i "state" | awk '{print $2}')
battery_percentage=$(echo "$battery_info" | grep -i "percentage" | awk '{print $2}')

# Check the state and display accordingly
if [ "$battery_state" == "fully-charged" ]; then
    echo "BAT: FULL"
elif [ "$battery_state" == "discharging" ]; then
    echo "BAT: $battery_percentage"
elif [ "$battery_state" == "charging" ]; then
    echo "PWR: $battery_percentage"
else
    echo "Battery state unknown"
fi
