-- colorscheme: https://github.com/overcache/NeoSolarized/blob/master/colors/NeoSolarized.vim
vim.o.termguicolors = true
vim.cmd('colorscheme NeoSolarized')

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

map("n", "<leader>o", ":lopen<CR>")
map("n", "<leader>c", ":lclose<CR>")
map("n", "<c-p>", ":lprev<CR>")
map("n", "<c-n>", ":lnext<CR>")

map("n", "<leader>h", "<c-w>h")
map("n", "<leader>l", "<c-w>l")
map("n", "<leader>j", "<c-w>j")
map("n", "<leader>k", "<c-w>k")

map("n", "<leader>=", "10<c-w>+")
map("n", "<leader>-", "10<c-w>-")
map("n", "<leader>.", "10<c-w>>")
map("n", "<leader>,", "10<c-w><")

map("n", "<leader>;", ":")

map("n", "gk", "gg")
map("n", "gj", "G")
