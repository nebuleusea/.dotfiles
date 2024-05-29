local wezterm = require("wezterm")
local options = {
	default_prog = {},
	launch_menu = {},
	keys = {},
}
if wezterm.target_triple == "aarch64-apple-darwin" then
	options.default_prog = { "zsh" }
	options.launch_menu = {
		{ label = " Top", args = { "top" } },
		{ label = " Bash", args = { "bash" } },
		{ label = " Zsh", args = { "zsh" } },
	}
	options.keys = {
		{ key = "z", mods = "CMD", action = wezterm.action.ShowLauncherArgs({ flags = "LAUNCH_MENU_ITEMS" }) },
	}
elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
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
	}
end

local config = {
	font_size = 18,
	font = wezterm.font("JetBrainsMonoNL Nerd Font Mono", { weight = "Regular" }),
	color_scheme = "Catppuccin Mocha",
	initial_cols = 100,
	initial_rows = 28,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 0.9,
	macos_window_background_blur = 70,
	text_background_opacity = 0.9,
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
