#!/bin/sh

# lowbat.sh


acpi -b | awk -F'[,:%]' '{print $2, $3}' | {
	read -r status capacity
	
	if [ "$status" = Discharging -a "$capacity" -lt 6 ]; then
		notify-send "Status $capacity" "Battery level critical!"	
	fi
}
