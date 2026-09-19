-- ┌──────────────────────────────────────────────────────────────┐
-- |                 Windows and Workspaces                       |
-- └──────────────────────────────────────────────────────────────┘

-- Keep floating utility windows from being force-maximized
hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- ┌──────────────────────────────────────────────────────────────┐
-- |               Startup app -> workspace assignment             |
-- └──────────────────────────────────────────────────────────────┘
-- "silent" keeps Hyprland from switching focus to the workspace when
-- these windows open, so autostart doesn't yank you away on login.
hl.window_rule({ name = "ws-chrome",  match = { class = "^(Google-chrome-unstable)$" }, workspace = "1 silent" })
hl.window_rule({ name = "ws-copilot", match = { class = "^(kitty-copilot)$" },          workspace = "2 silent" })
hl.window_rule({ name = "ws-kitty",   match = { class = "^(kitty)$" },                  workspace = "3 silent" })
hl.window_rule({ name = "ws-spotify", match = { class = "^(spotify)$" },                workspace = "5 silent" })
hl.window_rule({ name = "ws-slack",   match = { class = "^(Slack)$" },                  workspace = "8 silent" })

-- Don't steal focus for empty xwayland helper windows
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- Floating + centered for pickers/dialogs
hl.window_rule({
    name  = "nautilus-dialogs-float",
    match = { class = "^(nautilus)$", title = "^(Open File|Save File|.*Properties)$" },
    float = true,
})
hl.window_rule({
    name  = "nautilus-dialogs-center",
    match = { class = "^(nautilus)$", title = "^(Open File|Save File|.*Properties)$" },
    center = true,
})

-- Picture-in-picture stays floating, pinned, on top, on every workspace
hl.window_rule({ name = "pip-float",  match = { title = "^(Picture-in-Picture)$" }, float = true })
hl.window_rule({ name = "pip-pin",    match = { title = "^(Picture-in-Picture)$" }, pin = true })
hl.window_rule({ name = "pip-size",   match = { title = "^(Picture-in-Picture)$" }, size = "25% 25%" })
hl.window_rule({ name = "pip-move",   match = { title = "^(Picture-in-Picture)$" }, move = "74% 74%" })

-- Don't let media players idle-suspend while playing
hl.window_rule({
    name  = "vivaldi-idle-inhibit",
    match = { class = "^(vivaldi)$" },
    idle_inhibit = "fullscreen",
})

-- Rofi/wlogout render as clean floating overlays
hl.window_rule({ name = "rofi-float",    match = { class = "^(Rofi)$" },    float = true })
hl.window_rule({ name = "wlogout-float", match = { class = "^(wlogout)$" }, float = true, no_anim = false })

-- ┌──────────────────────────────────────────────────────────────┐
-- |     Quickshell "ii" layer surfaces (bar, sidebars, etc.)      |
-- └──────────────────────────────────────────────────────────────┘
hl.layer_rule({ match = { namespace = "^(quickshell:.*)$" }, blur = true })
hl.layer_rule({ match = { namespace = "^(quickshell:.*)$" }, blur_popups = true })
hl.layer_rule({ match = { namespace = "^(quickshell:.*)$" }, ignore_alpha = 0.79 })

hl.layer_rule({ match = { namespace = "^(quickshell:bar)$" },                animation = "slide" })
hl.layer_rule({ match = { namespace = "^(quickshell:actionCenter)$" },       no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:cheatsheet)$" },         animation = "slide bottom" })
hl.layer_rule({ match = { namespace = "^(quickshell:dock)$" },               animation = "slide bottom" })
hl.layer_rule({ match = { namespace = "^(quickshell:screenCorners)$" },      animation = "popin 120%" })
hl.layer_rule({ match = { namespace = "^(quickshell:lockWindowPusher)$" },   no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:notificationPopup)$" },  animation = "fade" })
hl.layer_rule({ match = { namespace = "^(quickshell:overlay)$" },           no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:overlay)$" },           ignore_alpha = 1 })
hl.layer_rule({ match = { namespace = "^(quickshell:overview)$" },          no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:osk)$" },               animation = "slide bottom" })
hl.layer_rule({ match = { namespace = "^(quickshell:osk)$" },               order = -1 })
hl.layer_rule({ match = { namespace = "^(quickshell:polkit)$" },           no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:popup)$" },            xray = false })
hl.layer_rule({ match = { namespace = "^(quickshell:popup)$" },            ignore_alpha = 1 })
hl.layer_rule({ match = { namespace = "^(quickshell:mediaControls)$" },    ignore_alpha = 1 })
hl.layer_rule({ match = { namespace = "^(quickshell:reloadPopup)$" },      animation = "slide" })
hl.layer_rule({ match = { namespace = "^(quickshell:regionSelector)$" },   no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:screenshot)$" },       no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:session)$" },         blur = true })
hl.layer_rule({ match = { namespace = "^(quickshell:session)$" },         no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:session)$" },         ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "^(quickshell:sidebarRight)$" },     animation = "slide right" })
hl.layer_rule({ match = { namespace = "^(quickshell:sidebarLeft)$" },      animation = "slide left" })
hl.layer_rule({ match = { namespace = "^(quickshell:verticalBar)$" },      animation = "slide" })
hl.layer_rule({ match = { namespace = "^(quickshell:wallpaperSelector)$" }, animation = "slide top" })
hl.layer_rule({ match = { namespace = "^(quickshell:wNotificationCenter)$" }, no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:wOnScreenDisplay)$" }, no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:wStartMenu)$" },       no_anim = true })
hl.layer_rule({ match = { namespace = "^(quickshell:wTaskView)$" },        ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "^(quickshell:wTaskView)$" },        no_anim = true })
