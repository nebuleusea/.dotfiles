local wezterm = require("wezterm")
local hostname = wezterm.hostname()

local font = wezterm.font_with_fallback({
	{ family = "JetBrainsMono Nerd Font Mono", weight = "Medium" },
	{ family = "Noto Sans CJK SC",             weight = "Bold" },
})

local font_size

if string.find(hostname, "macair") ~= nil then
	font_size = 18
elseif hostname == "jarmerarl" then
	font_size = 13
elseif hostname == "arch" then
	font_size = 26
elseif hostname == "pc-windows" then
	font_size = 12
end

return {
	font = font,
	font_size = font_size,
}
