return {
	-- NeoSolarized colorscheme
	-- the colorscheme should be available when starting Neovim
	{
		'maxmx03/solarized.nvim',
		lazy = false,
		priority = 1000,
		---@type solarized.config
		opts = {
			styles = {
				numbers = { fg = '#2aa198' },
				functions = { fg = 'NONE' },
				variables = { fg = 'NONE', italic = false },
				parameters = { fg = 'NONE', italic = false },
			},
		},
		config = function(_, opts)
			vim.o.termguicolors = true
			vim.o.background = 'dark'
			require('solarized').setup(opts)
			vim.cmd.colorscheme 'solarized'
		end,
	},

	{
		"mason-org/mason.nvim",
		opts = {}
	},

	-- Telescope
	{
		'nvim-telescope/telescope.nvim', version = '*',
		dependencies = {
			'nvim-lua/plenary.nvim',
			-- optional but recommended
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		}
	},

	-- Goto-Preview
	{
		"rmagatti/goto-preview",
		dependencies = { "rmagatti/logger.nvim" },
		event = "BufEnter",
		config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
	},
}
