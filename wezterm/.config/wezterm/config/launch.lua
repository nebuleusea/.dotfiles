local platform = require('utils.platform')()

local options = {
	default_prog = {},
	launch_menu = {},
}

if platform.is_win then
	options.default_prog = { "pwsh" }
	options.launch_menu = {
		{ label = " PowerShell v7", args = { "pwsh" } },
		{ label = " PowerShell v1", args = { "powershell" } },
		{ label = " Cmd", args = { "cmd" } },
		{ label = 'Nushell', args = { 'nu' } },
		{
			label = " GitBash",
			args = { "C:\\Program Files\\Git\\bin\\bash.exe" },
		},
	}
elseif platform.is_mac then
	options.default_prog = { "/opt/homebrew/bin/fish", "-l" }
	options.launch_menu = {
		{ label = " Top", args = { "top" } },
		{ label = " Bash", args = { "bash", "-l" } },
		{ label = " Zsh", args = { "zsh", "-l" } },
		{ label = " Fish", args = { "/opt/homebrew/bin/fish", "-l" } },
		{ label = " Nu", args = { "/opt/homebrew/bin/nu", "-l" } },
	}
elseif platform.is_linux then
	options.default_prog = { "fish", "-l" }
	options.launch_menu = {
		{ label = " Top", args = { "top" } },
		{ label = " Bash", args = { "bash", "-l" } },
		{ label = " Fish", args = { "fish", "-l" } },
		{ label = " Nu", args = { "nu", "-l" } },
	}
end

return options
