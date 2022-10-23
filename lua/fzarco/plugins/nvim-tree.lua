vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local nvim_tree_status, nvim_tree = pcall(require, "nvim-tree")
if not nvim_tree_status then
    return
end

nvim_tree.setup()
