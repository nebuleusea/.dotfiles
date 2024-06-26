local wezterm = require("wezterm")
local hostname = wezterm.hostname()

local options = {}

if string.find(hostname, "macair") ~= nil then
	options.initial_cols = 108
	options.initial_rows = 31
	options.window_background_opacity = 0.9
	options.macos_window_background_blur = 30
elseif hostname == "jarmerarl" then
	options.initial_cols = 120
	options.initial_rows = 28
	options.colors = {
		foreground = "white",
		background = "black",
	}
elseif hostname == "arch" then
	options.initial_cols = 138
	options.initial_rows = 32
	options.window_background_opacity = 0.96
elseif hostname == "windows" then
	options.initial_cols = 110
	options.initial_rows = 25
end

local config = {
	initial_cols = options.initial_cols,
	initial_rows = options.initial_rows,
	colors = options.colors,
	color_scheme = "Catppuccin Mocha",
	use_fancy_tab_bar = false,
	show_new_tab_button_in_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	window_decorations = "RESIZE",
	window_background_opacity = options.window_background_opacity,
	macos_window_background_blur = options.macos_window_background_blur,
	text_background_opacity = 0.95,
	adjust_window_size_when_changing_font_size = false,
	-- default_cursor_style = "SteadyBar",
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 5,
	},
}

return config
