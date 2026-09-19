-- ----------------------------------------------------------------
--  Prism animation set
--  Bezier curves ported from end-4/dots-hyprland's Material 3
--  "expressive" motion system (hypr/hyprland/general.lua), applied
--  with hl.curve() / hl.animation() instead of plain hyprlang lines.
-- ----------------------------------------------------------------

hl.config({
    animations = {
        enabled = true,
    },
})

hl.curve("expressiveFastSpatial",    { type = "bezier", points = { {0.42, 1.67}, {0.21, 0.90} } })
hl.curve("expressiveSlowSpatial",    { type = "bezier", points = { {0.39, 1.29}, {0.35, 0.98} } })
hl.curve("expressiveDefaultSpatial", { type = "bezier", points = { {0.38, 1.21}, {0.22, 1.00} } })
hl.curve("emphasizedDecel",          { type = "bezier", points = { {0.05, 0.70}, {0.10, 1.00} } })
hl.curve("emphasizedAccel",          { type = "bezier", points = { {0.30, 0.00}, {0.80, 0.15} } })
hl.curve("standardDecel",            { type = "bezier", points = { {0.00, 0.00}, {0.00, 1.00} } })
hl.curve("linear",                   { type = "bezier", points = { {0.00, 0.00}, {1.00, 1.00} } })

hl.animation({ leaf = "windows",        enabled = true, speed = 4,  bezier = "expressiveDefaultSpatial", style = "popin 85%" })
hl.animation({ leaf = "windowsIn",      enabled = true, speed = 4,  bezier = "expressiveFastSpatial",    style = "popin 85%" })
hl.animation({ leaf = "windowsOut",     enabled = true, speed = 3,  bezier = "emphasizedAccel",          style = "popin 85%" })
hl.animation({ leaf = "windowsMove",    enabled = true, speed = 4,  bezier = "expressiveDefaultSpatial" })

hl.animation({ leaf = "border",         enabled = true, speed = 6,  bezier = "linear" })
hl.animation({ leaf = "borderangle",    enabled = true, speed = 20, bezier = "linear", style = "loop" })

hl.animation({ leaf = "fade",           enabled = true, speed = 4,  bezier = "standardDecel" })
hl.animation({ leaf = "fadeIn",         enabled = true, speed = 3,  bezier = "emphasizedDecel" })
hl.animation({ leaf = "fadeOut",        enabled = true, speed = 3,  bezier = "emphasizedAccel" })

hl.animation({ leaf = "layers",         enabled = true, speed = 4,  bezier = "expressiveDefaultSpatial" })
hl.animation({ leaf = "layersIn",       enabled = true, speed = 4,  bezier = "expressiveFastSpatial",    style = "slide" })
hl.animation({ leaf = "layersOut",      enabled = true, speed = 3,  bezier = "emphasizedAccel",          style = "slide" })

hl.animation({ leaf = "workspaces",       enabled = true, speed = 5, bezier = "expressiveDefaultSpatial", style = "slidefade 15%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "expressiveSlowSpatial",    style = "slidevert" })
