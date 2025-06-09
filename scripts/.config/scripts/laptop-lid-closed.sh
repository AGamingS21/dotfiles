#!/bin/bash
state=$1
if [ "$state" == "on" ]; then
    hyprctl keyword monitor "eDP-1, enable"
else
    hyprctl keyword monitor "eDP-1, disable"
fi