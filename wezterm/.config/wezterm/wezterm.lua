-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
-- Spawn a fish shell in login mode
--config.default_prog = { '/usr/bin/fish', '-l' }


-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 14
-- config.color_scheme = 'AdventureTime'

config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true

config.enable_wayland = true 


config.color_scheme = 'Cloud (terminal.sexy)'

config.background = {
	{
		source = {
			Color = "rgba(0,0,0,0.8)",
		},
		height = "100%",
		width = "100%",
	}
}

-- colors #####################################
config.colors = {}

-- config.colors.cursor_border = "#ff0000"


-- Finally, return the configuration to wezterm:
return config
