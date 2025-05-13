local wezterm = require("wezterm")
local config = {}

-- config.color_scheme = "Atom One Dark"
config.color_scheme = "Catppuccin Macchiato"
config.font = wezterm.font("FiraCode Nerd Font Mono", { italic = true })
config.default_prog = { "/usr/bin/fish", "-l" }
config.font_size = 28
config.enable_tab_bar = false
config.window_background_opacity = 1
config.enable_wayland = true
return config
