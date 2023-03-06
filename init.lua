-- colorscheme: https://github.com/overcache/NeoSolarized/blob/master/colors/NeoSolarized.vim
vim.o.termguicolors = true
vim.cmd('colorscheme neosolarized')

-- settings
vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.wrap = false

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false

-- mappings
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>q", "<CMD>qa<CR>")
vim.keymap.set("n", "<leader><leader>", "<CMD>set hlsearch!<CR>")

vim.keymap.set("c", "<c-p>", "<up>")
vim.keymap.set("c", "<c-n>", "<down>")
