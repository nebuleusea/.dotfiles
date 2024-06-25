local wezterm = require("wezterm")
local hostname = wezterm.hostname()
local act = wezterm.action

local options = {}

if hostname == "macair" then
	options.font_size = 18
	options.initial_cols = 108
	options.initial_rows = 30
	options.default_prog = { "/opt/homebrew/bin/fish", "-l" }
	options.window_background_opacity = 0.9
	options.macos_window_background_blur = 30
	options.launch_menu = {
		{ label = " Top", args = { "top" } },
		{ label = " Bash", args = { "bash", "-l" } },
		{ label = " Zsh", args = { "zsh", "-l" } },
		{ label = " Fish", args = { "/opt/homebrew/bin/fish", "-l" } },
		{ label = " Nu", args = { "/opt/homebrew/bin/nu", "-l" } },
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
		foreground = "white",
		background = "black",
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
	options.font_size = 26
	options.initial_cols = 138
	options.initial_rows = 32
	options.window_background_opacity = 0.96
	options.default_prog = { "fish", "-l" }
	options.launch_menu = {
		{ label = " Top", args = { "top" } },
		{ label = " Bash", args = { "bash", "-l" } },
		{ label = " Fish", args = { "fish", "-l" } },
		{ label = " Nu", args = { "nu", "-l" } },
	}
	options.keys = {
		{ key = '1', mods = 'ALT', action = act.ActivateTab(0) },
		{ key = '2', mods = 'ALT', action = act.ActivateTab(1) },
		{ key = '3', mods = 'ALT', action = act.ActivateTab(2) },
		{ key = '4', mods = 'ALT', action = act.ActivateTab(3) },
		{ key = '5', mods = 'ALT', action = act.ActivateTab(4) },
		{ key = '6', mods = 'ALT', action = act.ActivateTab(5) },
		{ key = '7', mods = 'ALT', action = act.ActivateTab(6) },
		{ key = '8', mods = 'ALT', action = act.ActivateTab(7) },
		{ key = '9', mods = 'ALT', action = act.ActivateTab(8) },
		{ key = 'w', mods = 'ALT', action = act.CloseCurrentTab { confirm = true } },
		{ key = "z", mods = "ALT", action = act.ShowLauncherArgs({ flags = "LAUNCH_MENU_ITEMS" }) },
		{
			key = "F11",
			mods = "CTRL",
			action = act.ToggleFullScreen,
		},
	}
elseif hostname == "pc-windows" then
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
	-- font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Regular" }),
	font = wezterm.font_with_fallback({
		{ family = "JetBrainsMono Nerd Font Mono", weight = "Medium" },
		{ family = "Noto Sans CJK SC",             weight = "Bold" },
	}),
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
	keys = options.keys,
	default_prog = options.default_prog,
	launch_menu = options.launch_menu,
}

return config
