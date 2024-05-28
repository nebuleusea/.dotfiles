local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["lua_ls"].setup({
    capabilities = capabilities,
})

lspconfig["pyright"].setup({
    capabilities = capabilities,
})

lspconfig["gopls"].setup({
    capabilities = capabilities,
})
