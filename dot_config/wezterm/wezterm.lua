local wezterm = require("wezterm")
local config = {}

config.color_scheme = "Dracula+"
config.font_size = 14
config.font = wezterm.font("IntoneMono Nerd Font")
config.window_close_confirmation = "NeverPrompt"

return config
