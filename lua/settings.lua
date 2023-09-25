vim.o.termguicolors = true
vim.o.background = 'dark'

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

vim.g.nvim_pydoc_command = 'python -m pydoc'
