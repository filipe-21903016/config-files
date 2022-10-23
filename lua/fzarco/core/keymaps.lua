vim.g.mapleader = " "

local keymap = vim.keymap

-- General Keymaps

keymap.set("i", "jk", "<Esc>")

keymap.set("n", "x", '"_x')

-- Split Navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")

-- Lazy moving
keymap.set("n", "<Leader>j", "<cmd>m .+1<CR>==")
keymap.set("n", "<Leader>k", "<cmd>m .-2<CR>==")

-- NERDTree Keymaps
keymap.set("n", "<C-f>", "<cmd>NvimTreeToggle<CR>")

-- Telescope Keymaps
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
