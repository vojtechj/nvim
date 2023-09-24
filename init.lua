require('settings')
require('mappings')
require('plugins')

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  -- LSP semantic token highlighting disabled
  client.server_capabilities.semanticTokensProvider = nil
end)

require('lspconfig').clangd.setup({})
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- vim.lsp.set_log_level("debug")
