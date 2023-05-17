vim.g.mapleader = " "

vim.keymap.set("n", "<up>", "<c-y>")
vim.keymap.set("n", "<down>", "<c-e>")
vim.keymap.set("n", "<left>", "<c-u>")
vim.keymap.set("n", "<right>", "<c-d>")

vim.keymap.set("n", "<leader>q", ":qa<CR>")
vim.keymap.set("n", "<leader><leader>", ":set hlsearch!<CR>")

vim.keymap.set("c", "<c-p>", "<up>")
vim.keymap.set("c", "<c-n>", "<down>")

vim.keymap.set("n", "<leader>g", ":sil lgrep! ")
vim.keymap.set("n", "<leader>r", ":sil lgrep! <c-r><c-w> ")

vim.keymap.set("n", "<leader>v", "<c-w><c-v>")
vim.keymap.set("n", "<leader>s", "<c-w><c-s>")
vim.keymap.set("n", "<leader>x", "<c-w><c-c>")

vim.keymap.set("n", "<leader>o", ":lopen<CR>")
vim.keymap.set("n", "<leader>c", ":lclose<CR>")
vim.keymap.set("n", "<c-p>", ":lprev<CR>zz")
vim.keymap.set("n", "<c-n>", ":lnext<CR>zz")

vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<leader>h", "<c-w>h")
vim.keymap.set("n", "<leader>l", "<c-w>l")
vim.keymap.set("n", "<leader>j", "<c-w>j")
vim.keymap.set("n", "<leader>k", "<c-w>k")

vim.keymap.set("n", "<a-j>", "5<c-w>-")
vim.keymap.set("n", "<a-k>", "5<c-w>+")
vim.keymap.set("n", "<a-.>", "10<c-w>>")
vim.keymap.set("n", "<a-,>", "10<c-w><")

vim.keymap.set("n", "<leader>;", ":")
vim.keymap.set("n", "<leader>u", ":up<CR>")

vim.keymap.set("n", "gk", "gg")
vim.keymap.set("n", "gj", "G")

vim.keymap.set("n", "<leader>f", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>b", ":Telescope buffers<cr>")
vim.keymap.set("n", "<leader>d", ":Telescope oldfiles<cr>")
