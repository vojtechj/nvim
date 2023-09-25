require('settings')
require('plugins')
require('mappings')

-- Lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- LSP-Zero
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  -- LSP semantic token highlighting disabled
  client.server_capabilities.semanticTokensProvider = nil
end)

-- Mason
require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp.default_setup,
  },
})

-- Language servers
require('lspconfig').clangd.setup({})

require('lspconfig').lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {
					'vim',
				}
			}
		}
	}
})

