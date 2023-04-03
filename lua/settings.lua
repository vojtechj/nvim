-- colorscheme: https://github.com/overcache/NeoSolarized/blob/master/colors/NeoSolarized.vim
vim.o.termguicolors = true
vim.cmd.colorscheme('NeoSolarized')

vim.o.number = true
vim.o.relativenumber = true

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
