#!/bin/sh
# screenlayoutchange.sh

HDMI_OUTPUTS=$(xrandr | grep HDMI)
IFS=$'\n'; set -f; HDMI_LINES=($HDMI_OUTPUTS)

echo "Checking displays: $HDMI_OUTPUTS" >> /home/fstorfa/hdmi.status

for line in "${HDMI_LINES[@]}";
do
    HDMI=$(echo $line | awk '{print $1}')
    STATUS=$(echo $line | awk '{print $2}')
    if [ "$STATUS" = "connected" ]; then
        echo "$HDMI connected" >> /home/fstorfa/hdmi.status
        xrandr --output $HDMI --auto --right-of eDP-1
        notify-send " xrandr" "Screen layout changed: $HDMI + eDP-1"
    else
        echo "$HDMI disconnected" >> /home/fstorfa/hdmi.status
        xrandr --output $HDMI --off
        notify-send " xrandr" "No external displays connected"
    fi
done
