-- ┌──────────────────────────────────────────────────────────────┐
-- |                       Look and Feel                          |
-- |  Values adapted from end-4/dots-hyprland's                   |
-- |  hypr/hyprland/general.lua (Material 3 expressive rounding,  |
-- |  layered blur, soft shadow, subtle dim on inactive windows).  |
-- └──────────────────────────────────────────────────────────────┘

local colors = require("conf.colors")

hl.config({
    general = {
        gaps_in  = 4,
        gaps_out = 12,

        border_size = 2,

        col = {
            active_border   = colors.primary,
            inactive_border = colors.outline_variant,
        },

        resize_on_border  = true,
        allow_tearing     = false,
        layout            = "dwindle",
        no_focus_fallback = true,

        snap = {
            enabled      = true,
            window_gap   = 4,
            monitor_gap  = 5,
            respect_gaps = true,
        },
    },

    decoration = {
        -- 2 = circle-ish corners, higher = squircle. 2.5 gives the soft
        -- "Material 3 expressive" squircle look without going full Apple.
        rounding       = 16,
        rounding_power = 2.5,

        active_opacity   = 1.0,
        inactive_opacity = 0.92,

        dim_inactive = true,
        dim_strength = 0.05,

        shadow = {
            enabled      = true,
            range        = 20,
            render_power = 8,
            color        = 0x33000000,
        },

        blur = {
            enabled           = true,
            size              = 8,
            passes            = 3,
            brightness        = 1.0,
            noise             = 0.02,
            contrast          = 0.9,
            vibrancy          = 0.4,
            ignore_opacity    = true,
            popups            = true,
            new_optimizations = true,
        },
    },

    dwindle = {
        preserve_split = true,
        smart_split    = false,
        smart_resizing = false,
    },

    master = {
        new_status = "master",
    },

    misc = {
        force_default_wallpaper   = 0,
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
        background_color         = colors.background,
    },
})
