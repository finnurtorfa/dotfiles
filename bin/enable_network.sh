#!/bin/bash
sudo wpa_supplicant -B -i wlp61s0 -c /etc/wpa_supplicant/wpa_supplicant.conf
sudo wpa_cli -i wlp61s0 enable_network $1
sudo dhcpcd
