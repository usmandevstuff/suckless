#!/bin/bash

battery_per=$(cat /sys/class/power_supply/BAT1/capacity)
status=$(cat /sys/class/power_supply/BAT1/status)

dischar_battery() {
    if [[ $battery_per -eq 100 ]]; then
            echo "$battery_per%  " 
    elif [[ $battery_per -ge 80 ]]; then
            echo "$battery_per%  "
    elif [[ $battery_per -ge 50 ]]; then
            echo "$battery_per%  "
    elif [[ $battery_per -gt 30 ]]; then
            echo "$battery_per%  "
    elif [[ $battery_per -ge 0 ]]; then
            echo "$battery_per%  "
    else
            echo "󰂑"
    fi

}

case $status in
    "Full") echo "$battery_per% FULL "
        ;;
    "Charging") echo "$battery_per%  "
        ;;
    "Discharging") dischar_battery
esac
