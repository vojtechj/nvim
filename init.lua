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
