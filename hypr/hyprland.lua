-- Hyprland Configuration
-- @ Prism — a Material-You inspired rice, spirit borrowed from
--   end-4/dots-hyprland (illogical-impulse), adapted to Hyprland's
--   Lua config format (hyprlang's .conf format is deprecated as of
--   Hyprland 0.57).
--
-- Reference clone kept at:
--   ~/bin/hypr/reference/dots-hyprland
--
-- --------------------------- SOF -------------------------------

require("conf.monitors")
require("conf.defaults") -- programs used by conf.binds
require("conf.autostart")
require("conf.envvars")
require("conf.perms")
require("conf.input")
require("conf.binds")
require("conf.rules")
require("conf.looks")
require("animations.Prism")

-- --------------------------- EOF -------------------------------
