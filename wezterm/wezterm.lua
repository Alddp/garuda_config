local wezterm = require("wezterm")
local config = {}

-- config.color_scheme = "Atom One Dark"
config.color_scheme = "Catppuccin Macchiato"
config.font = wezterm.font("FiraCode Nerd Font Mono", { italic = true })

config.font_size = 18
config.enable_tab_bar = false
config.window_background_opacity = 1

return config
