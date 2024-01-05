vim.g.mapleader = " "

vim.keymap.set("n", "<up>", "<c-y>0L")
vim.keymap.set("n", "<down>", "<c-e>0H")
vim.keymap.set("n", "<left>", "<c-u>0L")
vim.keymap.set("n", "<right>", "<c-d>0H")

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

vim.keymap.set("n", "<leader>a", ":e #<CR>")

vim.keymap.set("n", "gk", "gg")
vim.keymap.set("n", "gj", "G")

vim.keymap.set("n", "<leader>f", function() require('telescope.builtin').find_files() end, {})
vim.keymap.set("n", "<leader>b", function() require('telescope.builtin').buffers() end, {})
vim.keymap.set("n", "<leader>d", function() require('telescope.builtin').oldfiles() end, {})

vim.keymap.set("n", "gd", function() require('goto-preview').goto_preview_definition() end, {})
vim.keymap.set("n", "gD", function() require('goto-preview').goto_preview_declaration() end, {})
vim.keymap.set("n", "gr", function() require('goto-preview').goto_preview_references() end, {})
vim.keymap.set("n", "gt", function() require('goto-preview').goto_preview_type_definition() end, {})
vim.keymap.set("n", "<c-[>", function() require('goto-preview').close_all_win() end, {})
