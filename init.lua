-- Core
require("fzarco.core.options")
require("fzarco.core.colorscheme")
require("fzarco.core.keymaps")

-- Packer
require("fzarco.plugins-setup")

-- Plugins
require("fzarco.plugins.lualine")
require("fzarco.plugins.telescope")
require("fzarco.plugins.nvim-cmp")
require("fzarco.plugins.autopairs")
require("fzarco.plugins.treesitter")
require("fzarco.plugins.gitsigns")
require("fzarco.plugins.nvim-tree")

-- LSP
require("fzarco.plugins.lsp.mason")
require("fzarco.plugins.lsp.lspconfig")
