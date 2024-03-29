return {
	-- NeoSolarized colorscheme
	-- the colorscheme should be available when starting Neovim
	{
		"maxmx03/solarized.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require('solarized').setup({
				styles = {
					numbers = { fg = '#2aa198' },
					functions = { fg = 'NONE' },
					variables = { fg = 'NONE', italic = false },
					parameters = { fg = 'NONE', italic = false },
				},
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme solarized]])
		end,
	},

	-- LSP-Zero
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

	--- Uncomment these if you want to manage LSP servers from neovim
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	-- LSP Support
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'},
		},
	},

	-- Autocompletion
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{'L3MON4D3/LuaSnip'},
		}
	},

	-- Telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		dependencies = {
			{'nvim-lua/plenary.nvim' },
		}
    },

	-- Goto-Preview
	{
		'rmagatti/goto-preview',
		config = function()
			require('goto-preview').setup({})
		end,
	},
}
