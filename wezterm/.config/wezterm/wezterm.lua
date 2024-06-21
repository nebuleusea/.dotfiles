local wezterm = require("wezterm")
local hostname = wezterm.hostname()

local options = {}

if hostname == "appledarwin" then
	options.font_size = 15
	options.initial_cols = 110
	options.initial_rows = 28
	options.default_prog = { "zsh", "-l" }
	options.launch_menu = {
		{ label = " Top", args = { "top" } },
		{ label = " Bash", args = { "bash", "-l" } },
		{ label = " Zsh", args = { "zsh", "-l" } },
	}
	options.keys = {
		{ key = "z", mods = "CMD", action = wezterm.action.ShowLauncherArgs({ flags = "LAUNCH_MENU_ITEMS" }) },
		{
			key = "F11",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	}
elseif hostname == "jarmerarl" then
	options.font_size = 13
	options.initial_cols = 120
	options.initial_rows = 28
	options.colors = {
		foreground = 'white',
		background = 'black'
	}
	options.default_prog = { "nu", "-l" }
	options.launch_menu = {
		{ label = " Top", args = { "top" } },
		{ label = " Bash", args = { "bash", "-l" } },
		{ label = " Fish", args = { "fish", "-l" } },
		{ label = " Nu", args = { "nu", "-l" } },
	}
	options.keys = {
		{ key = "z", mods = "ALT", action = wezterm.action.ShowLauncherArgs({ flags = "LAUNCH_MENU_ITEMS" }) },
		{
			key = "F11",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	}
elseif hostname == "arch" then
	options.font_size = 28
	options.initial_cols = 130
	options.initial_rows = 28
	options.window_background_opacity = 0.99
	options.default_prog = { "nu", "-l" }
	options.launch_menu = {
		{ label = " Top", args = { "top" } },
		{ label = " Bash", args = { "bash", "-l" } },
		{ label = " Fish", args = { "fish", "-l" } },
		{ label = " Nu", args = { "nu", "-l" } },
	}
	options.keys = {
		{ key = "z", mods = "ALT", action = wezterm.action.ShowLauncherArgs({ flags = "LAUNCH_MENU_ITEMS" }) },
		{
			key = "F11",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	}
elseif hostname == "pc-windows-msvc" then
	options.font_size = 12
	options.initial_cols = 110
	options.initial_rows = 25
	options.default_prog = { "pwsh" }
	options.launch_menu = {
		{ label = " PowerShell v7", args = { "pwsh" } },
		{ label = " PowerShell v1", args = { "powershell" } },
		{ label = " Cmd", args = { "cmd" } },
		{
			label = " GitBash",
			args = { "C:\\Program Files\\Git\\bin\\bash.exe" },
		},
	}
	options.keys = {
		{ key = "z", mods = "ALT", action = wezterm.action.ShowLauncherArgs({ flags = "LAUNCH_MENU_ITEMS" }) },
		{
			key = "F11",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	}
end

local config = {
	font_size = options.font_size,
	initial_cols = options.initial_cols,
	initial_rows = options.initial_rows,
	font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Regular" }),
	colors = options.colors,
	color_scheme = "Catppuccin Mocha",
	use_fancy_tab_bar = false,
	show_new_tab_button_in_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	window_decorations = "RESIZE",
	window_background_opacity = options.window_background_opacity,
	text_background_opacity = 0.95,
	-- macos_window_background_blur = 10,
	adjust_window_size_when_changing_font_size = false,
	-- default_cursor_style = "SteadyBar",
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 5,
	},
	keys = options.keys,
	default_prog = options.default_prog,
	launch_menu = options.launch_menu,
}

return config
