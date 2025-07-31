#!/bin/bash

# Check if there's an active Ethernet connection
ethernet_connected=$(nmcli -t -f DEVICE,TYPE,STATE device | grep -e "ethernet" | grep -e "connected" | wc -l)

# Check if there's an active WiFi connection
wifi_connected=$(nmcli -t -f DEVICE,TYPE,STATE device | grep -e "wifi" | grep -e "connected" | wc -l)

# If Ethernet is connected, hide WiFi, and vice versa
if [[ $ethernet_connected -gt 0 ]]; then
  polybar-msg action 'module/ethernet/show'
  polybar-msg action 'module/wifi/hide'
else
  polybar-msg action 'module/wifi/show'
  polybar-msg action 'module/ethernet/hide'
fi

