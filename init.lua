-- colorscheme: https://github.com/overcache/NeoSolarized/blob/master/colors/NeoSolarized.vim
vim.o.termguicolors = true
vim.cmd('colorscheme NeoSolarized')

-- settings
vim.o.number = true
vim.o.relativenumber = true

vim.o.scrolloff = 8

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

vim.o.wrap = false

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false

vim.o.grepprg = [[rg --vimgrep --smart-case $*]]
vim.o.grepformat = '%f:%l:%c:%m'

-- mappings
vim.g.mapleader = " "

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>q", ":qa<CR>")
map("n", "<leader><leader>", ":set hlsearch!<CR>")

map("c", "<c-p>", "<up>")
map("c", "<c-n>", "<down>")

map("n", "<leader>g", ":sil lgrep! ")
map("n", "<leader>r", ":sil lgrep! <c-r><c-w> ")

map("n", "<leader>v", "<c-w><c-v>")
map("n", "<leader>x", "<c-w><c-c>")

map("n", "<leader>o", ":lopen<CR>")
map("n", "<leader>c", ":lclose<CR>")
map("n", "<c-p>", ":lprev<CR>zz")
map("n", "<c-n>", ":lnext<CR>zz")

map("n", "<c-d>", "<c-d>zz")
map("n", "<c-u>", "<c-u>zz")
map("n", "n", "nzz")
map("n", "N", "Nzz")

map("n", "<leader>h", "<c-w>h")
map("n", "<leader>l", "<c-w>l")
map("n", "<leader>j", "<c-w>j")
map("n", "<leader>k", "<c-w>k")

map("n", "<a-j>", "5<c-w>-")
map("n", "<a-k>", "5<c-w>+")
map("n", "<a-.>", "10<c-w>>")
map("n", "<a-,>", "10<c-w><")

map("n", "<leader>;", ":")

map("n", "gk", "gg")
map("n", "gj", "G")

map("n", "<leader>f", ":Telescope find_files<cr>")
map("n", "<leader>b", ":Telescope buffers<cr>")

-- Plugins
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

end)
