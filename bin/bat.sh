#!/bin/sh

# bat.sh

STATUS="$(acpi | awk '{print $3}')"
BATTIME="$(acpi | awk '{print $5}')"
PCT="$(acpi | awk '{print $4}')"

if [ $STATUS = "Discharging," ]; then
	notify-send "Status ${PCT::-1}" "Time remaining: $BATTIME"
else
	notify-send "Status ${PCT::-1}" "Charging"

fi
echo $BATTIME
