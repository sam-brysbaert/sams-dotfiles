#!/bin/bash

POWERSUPPLY="/sys/class/power_supply/AC/online" # could be different on your system!
TOO_LOW=20 # how low is too low?
NOT_CHARGING="0"
BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+(?=%)')
STATUS=$(cat $POWERSUPPLY)

if [ $BATTERY_LEVEL -le $TOO_LOW -a $STATUS = $NOT_CHARGING ]
then
    notify-send -u critical "Battery low" "Battery level is ${BATTERY_LEVEL}%!"
fi

exit 0
