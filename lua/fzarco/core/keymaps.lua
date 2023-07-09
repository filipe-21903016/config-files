vim.g.mapleader = " "

local keymap = vim.keymap

-- General Keymaps

keymap.set("i", "jk", "<Esc>")

keymap.set("n", "x", '"_x')

-- Split Navigation
-- keymap.set("n", "<leader>h", "<C-w>h")
-- keymap.set("n", "<leader>l", "<C-w>l")
-- keymap.set("n", "<leader>j", "<C-w>j")
-- keymap.set("n", "<leader>k", "<C-w>k")

-- Lazy moving
keymap.set("n", "<Leader>j", "<cmd>m .+1<CR>==")
keymap.set("n", "<Leader>k", "<cmd>m .-2<CR>==")

-- NERDTree Keymaps
keymap.set("n", "<C-f>", "<cmd>NvimTreeToggle<CR>")

-- Telescope Keymaps
-- keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files({layout_strategy = 'vertical'})<cr>")
keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")

-- Harpoon Keymaps
keymap.set("n", "<leader>a", '<cmd>lua require("harpoon.mark").add_file()<cr>')
keymap.set("n", "<leader>e", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')

keymap.set("n", "<C-h>", '<cmd>lua require("harpoon.ui").nav_file(1)<cr>')
keymap.set("n", "<C-j>", '<cmd>lua require("harpoon.ui").nav_file(2)<cr>')
keymap.set("n", "<C-k>", '<cmd>lua require("harpoon.ui").nav_file(3)<cr>')
keymap.set("n", "<C-l>", '<cmd>lua require("harpoon.ui").nav_file(4)<cr>')
