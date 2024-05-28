vim.api.nvim_set_hl(0,"ColorColumn",{ctermbg="blue"})
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})
