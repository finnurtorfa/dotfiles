-- ┌──────────────────────────────────────────────────────────────┐
-- |                  Environmental Variables                     |
-- └──────────────────────────────────────────────────────────────┘

hl.env("XCURSOR_THEME", "GoogleDot-Black")
hl.env("HYPRCURSOR_THEME", "GoogleDot-Black")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- GTK/Qt should follow the same dark Material palette
hl.env("GTK_THEME", "adw-gtk3-dark")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

-- Required by Quickshell's Python helper scripts (color generation, thumbnails, etc.)
hl.env("ILLOGICAL_IMPULSE_VIRTUAL_ENV", "~/.local/state/quickshell/.venv")
