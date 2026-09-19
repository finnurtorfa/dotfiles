-- ┌──────────────────────────────────────────────────────────────┐
-- |                       Keybindings                            |
-- └──────────────────────────────────────────────────────────────┘

local defaults = require("conf.defaults")

local mainMod = "SUPER"
local alMod   = "ALT"

-- ----------------------------
-- Launchers & Utilities
-- ----------------------------
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(defaults.terminal))
hl.bind(mainMod .. " + E",      hl.dsp.exec_cmd(defaults.fileManager))
hl.bind(mainMod .. " + D",      hl.dsp.exec_cmd(defaults.menu))
hl.bind(mainMod .. " + Tab",    hl.dsp.global("quickshell:overviewWorkspacesToggle"))
hl.bind(mainMod .. " + W",      hl.dsp.exec_cmd(defaults.browser))
hl.bind(mainMod .. " + F",      hl.dsp.exec_cmd(defaults.editor))
hl.bind("CTRL + ALT + Delete",  hl.dsp.global("quickshell:sessionToggle"))

-- ----------------------------
-- Quickshell "ii" shell surfaces
-- ----------------------------
hl.bind(mainMod .. " + A",        hl.dsp.global("quickshell:sidebarLeftToggle"))
hl.bind(mainMod .. " + N",        hl.dsp.global("quickshell:sidebarRightToggle"))
hl.bind(mainMod .. " + Slash",    hl.dsp.global("quickshell:cheatsheetToggle"))
hl.bind(mainMod .. " + G",        hl.dsp.global("quickshell:overlayToggle"))
hl.bind(mainMod .. " + M",        hl.dsp.global("quickshell:mediaControlsToggle"))
hl.bind("CTRL + " .. mainMod .. " + T", hl.dsp.global("quickshell:wallpaperSelectorToggle"))

-- ----------------------------
-- Window Management
-- ----------------------------
hl.bind(mainMod .. " + C",         hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exit())
hl.bind(mainMod .. " + T",         hl.dsp.group.toggle())
hl.bind(mainMod .. " + V",         hl.dsp.window.float())
hl.bind(mainMod .. " + space",     hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + P",         hl.dsp.window.pseudo()) -- dwindle

-- ----------------------------
-- Lock & Bar
-- ----------------------------
hl.bind(alMod .. " + L", hl.dsp.exec_cmd(defaults.lockdaemon))

-- ----------------------------
-- Screenshots & Clipboard
-- ----------------------------
hl.bind(alMod .. " + D", hl.dsp.exec_cmd([[bash -c 'grim -g "$(slurp)" /tmp/shot.png && cp /tmp/shot.png ~/Pictures/screenshot-$(date +%s).png && wl-copy < /tmp/shot.png']]))
hl.bind("Print",         hl.dsp.exec_cmd([[bash -c 'grim /tmp/shot-full.png && cp /tmp/shot-full.png ~/Pictures/screenshot-$(date +%s).png && wl-copy < /tmp/shot-full.png']]))
hl.bind(alMod .. " + P",  hl.dsp.exec_cmd("clipvault list | rofi -dmenu -theme ~/.config/rofi/prism.rasi -display-columns 2 | clipvault get | wl-copy"))

-- ----------------------------
-- Focus Movement
-- ----------------------------
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Tabbed-group focus cycling (also fires alongside focus movement above)
hl.bind(mainMod .. " + H", hl.dsp.group.prev())
hl.bind(mainMod .. " + L", hl.dsp.group.next())

-- ----------------------------
-- Workspace Switching
-- ----------------------------
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- ----------------------------
-- Mouse Controls
-- ----------------------------
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse:272",  hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273",  hl.dsp.window.resize(), { mouse = true })

-- ----------------------------
-- Multimedia Keys
-- ----------------------------
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Keyboard backlight (ThinkPad Fn+Space / XF86KbdLightOnOff, 3 levels: off/low/high)
hl.bind("XF86KbdBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -d tpacpi::kbd_backlight set +1"), { locked = true, repeating = true })
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd("brightnessctl -d tpacpi::kbd_backlight set 1-"), { locked = true, repeating = true })
hl.bind("XF86KbdLightOnOff",     hl.dsp.exec_cmd("~/.config/hypr/custom/scripts/kbd-backlight-toggle.sh"), { locked = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
