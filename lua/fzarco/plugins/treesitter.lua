local treesitter_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status then
    return
end

treesitter.setup({
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    },
    ensured_installed = {
        "rust",
        "javascript",
        "vim",
        "lua",
        "gitignore",
        "bash",
        "python",
        "yaml",
        "markdown",
        "dockerfile",
    },
    auto_install=true,
})
