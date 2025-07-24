vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")

-- Undo history
vim.cmd("set undodir=~/.vim/undodir")
vim.cmd("set undofile")
vim.cmd("set undolevels=1000")
vim.cmd("set undoreload=10000")

-- Navigating in windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- general
vim.keymap.set("n", "<leader>qq", ":q<CR>", { desc = 'Quit' })
vim.keymap.set("n", "<leader>qa", ":qa<CR>", { desc = 'Quit all' })
vim.keymap.set("n", "<leader>ww", ":w<CR>", { desc = 'Save' })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { desc = 'Save and quit' })
