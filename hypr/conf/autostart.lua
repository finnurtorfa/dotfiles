-- ┌──────────────────────────────────────────────────────────────┐
-- |                        Auto Start                             |
-- └──────────────────────────────────────────────────────────────┘

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    -- waybar + dunst replaced by end-4/dots-hyprland's "ii" Quickshell shell (bar, notifications, sidebars, overview)
    hl.exec_cmd("qs -c ii")
    hl.exec_cmd("wl-paste --watch clipvault store")
    hl.exec_cmd("wl-paste --watch cliphist store")
    hl.exec_cmd("hyprctl setcursor GoogleDot-Black 24")
end)
