vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fb", vim.cmd.Ex)

vim.keymap.set("i", "kj", "<esc>")
vim.keymap.set("v", "df", "<esc>")
vim.keymap.set("c", "kj", "<esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-1<CR>gv=gv")

vim.keymap.set("i", "<A-space>", "<esc>1la")

vim.keymap.set("n", "<leader>v", "<cmd>vsp<cr>")
vim.keymap.set("n", "<leader>h", "<cmd>sp<cr>")

vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")

vim.keymap.set("n", "<S-h>", "gT")
vim.keymap.set("n", "<S-l>", "gt")
vim.keymap.set("n", "<leader>tn", ":tabnew")
vim.keymap.set("n", "<leader>tm", ":tabmove")
