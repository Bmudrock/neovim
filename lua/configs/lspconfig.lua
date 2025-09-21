require("nvchad.configs.lspconfig").defaults()

vim.lsp.config('gopls', {
    cmd = { 'gopls' },
    filetypes = { 'go' },
})

local servers = { "html", "cssls", "pyright", "gopls" }
vim.lsp.enable(servers)

--local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
--for _, lsp in ipairs(servers) do
--  lspconfig[lsp].setup {
--    on_attach = nvlsp.on_attach,
--    on_init = nvlsp.on_init,
--    capabilities = nvlsp.capabilities,
--  }
--end


-- read :h vim.lsp.config for changing options of lsp servers
