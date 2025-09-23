#!/bin/bash

# Battery thresholds
LOW_THRESHOLD=15
FULL_THRESHOLD=90

FULL_SOUND="/usr/share/sounds/freedesktop/stereo/complete.oga"
LOW_SOUND="/usr/share/sounds/freedesktop/stereo/bell.oga"

while true; do
  # Read battery status and capacity
  BATTERY_STATUS=$(cat /sys/class/power_supply/BAT1/status)
  BATTERY_CAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)

  # Full battery notification
  if [ "$BATTERY_STATUS" == "Charging" ] || [ "$BATTERY_STATUS" == "Full" ]; then
    if [ "$BATTERY_CAPACITY" -ge "$FULL_THRESHOLD" ]; then
      notify-send "Battery Full" "Battery is at ${BATTERY_CAPACITY}%" -u critical -i battery-full
      paplay "$FULL_SOUND"
    fi
  fi

  # Low battery notification
  if [ "$BATTERY_CAPACITY" -le "$LOW_THRESHOLD" ] && [ "$BATTERY_STATUS" != "Charging" ]; then
    notify-send "Battery Low" "Battery is at ${BATTERY_CAPACITY}%" -u critical -i battery-caution
    paplay "$LOW_SOUND"
  fi

  # Wait 5 minutes before checking again
  sleep 300
done
