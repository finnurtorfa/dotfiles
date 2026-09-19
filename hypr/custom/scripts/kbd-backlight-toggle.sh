#!/bin/bash
# Toggle the ThinkPad keyboard backlight off/on (kept as a script since
# brightnessctl has no built-in toggle/cycle operation).
dev="tpacpi::kbd_backlight"
current="$(brightnessctl -d "$dev" g)"
max="$(brightnessctl -d "$dev" m)"

if [ "$current" -eq 0 ]; then
  brightnessctl -d "$dev" set "$max" >/dev/null
else
  brightnessctl -d "$dev" set 0 >/dev/null
fi
