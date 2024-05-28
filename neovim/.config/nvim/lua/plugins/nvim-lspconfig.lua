return {
	event = "VeryLazy",
	"neovim/nvim-lspconfig",
	dependencies = { "williamboman/mason-lspconfig.nvim" },
	config = function()
		require("mason-lspconfig").setup()
	end,
}
