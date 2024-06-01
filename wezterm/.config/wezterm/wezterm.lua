local wezterm = require("wezterm")

local options = {
	font_size = 0,
	initial_cols = 0,
	initial_rows = 0,
	default_prog = {},
	launch_menu = {},
	keys = {},
}
if wezterm.target_triple == "aarch64-apple-darwin" then
	options.font_size = 18
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
elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
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
	color_scheme = "Catppuccin Mocha",
	use_fancy_tab_bar = false,
	show_new_tab_button_in_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	window_decorations = "RESIZE",
	window_background_opacity = 0.75,
	text_background_opacity = 0.75,
	macos_window_background_blur = 70,
	adjust_window_size_when_changing_font_size = false,
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
