local wezterm = require("wezterm")
local platform = require("utils.platform")()
local act = wezterm.action

local mod = {}

if platform.is_mac then
	mod.SUPER = "CMD"
	mod.SUPER_REV = "CMD|CTRL"
elseif platform.is_win or platform.is_linux then
	mod.SUPER = "ALT"
	mod.SUPER_REV = "ALT|CTRL"
end

local keys = {

	-- misc/useful --
	{ key = "F1", mods = "NONE", action = "ActivateCopyMode" },
	{ key = "F2", mods = "NONE", action = act.ActivateCommandPalette },
	{ key = "F3", mods = "NONE", action = act.ShowLauncherArgs({ flags = "LAUNCH_MENU_ITEMS" }) },
	{ key = "F11", mods = "NONE", action = act.ToggleFullScreen },

	-- tab --
	{ key = "1", mods = mod.SUPER, action = act.ActivateTab(0) },
	{ key = "2", mods = mod.SUPER, action = act.ActivateTab(1) },
	{ key = "3", mods = mod.SUPER, action = act.ActivateTab(2) },
	{ key = "4", mods = mod.SUPER, action = act.ActivateTab(3) },
	{ key = "5", mods = mod.SUPER, action = act.ActivateTab(4) },
	{ key = "6", mods = mod.SUPER, action = act.ActivateTab(5) },
	{ key = "7", mods = mod.SUPER, action = act.ActivateTab(6) },
	{ key = "8", mods = mod.SUPER, action = act.ActivateTab(7) },
	{ key = "9", mods = mod.SUPER, action = act.ActivateTab(8) },

	-- copy/paste --
	{ key = "c", mods = "CTRL|SHIFT", action = act.CopyTo("Clipboard") },
	{ key = "v", mods = "CTRL|SHIFT", action = act.PasteFrom("Clipboard") },

	-- tabs --
	-- tabs: spawn+close
	{ key = "t", mods = mod.SUPER, action = act.SpawnTab("DefaultDomain") },
	{ key = "w", mods = mod.SUPER, action = act.CloseCurrentTab({ confirm = true }) },

	-- tabs: navigation
	{ key = "[", mods = mod.SUPER, action = act.ActivateTabRelative(-1) },
	{ key = "]", mods = mod.SUPER, action = act.ActivateTabRelative(1) },
	{ key = "[", mods = mod.SUPER_REV, action = act.MoveTabRelative(-1) },
	{ key = "]", mods = mod.SUPER_REV, action = act.MoveTabRelative(1) },

	-- window --
	-- spawn windows
	{ key = "n", mods = mod.SUPER, action = act.SpawnWindow },
}

return { keys = keys }
