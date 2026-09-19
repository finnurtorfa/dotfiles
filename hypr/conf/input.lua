-- ┌──────────────────────────────────────────────────────────────┐
-- |                          Input                                |
-- └──────────────────────────────────────────────────────────────┘

hl.config({
    input = {
        kb_layout  = "is",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,
        sensitivity  = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "vertical",   action = "move" })
hl.gesture({ fingers = 4, direction = "pinch",      action = "fullscreen" })
