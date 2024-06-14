vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>vv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>vv", vim.cmd.Ex)

-- move between splits
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

-- my try to replicate REPL behavior
-- it doesnt work as one would expect TODO: see if it works
-- vim.keymap.set("n", "<C-c><C-c>", "yyl :silent !tmux pasteb -t right<CR><CR>")
