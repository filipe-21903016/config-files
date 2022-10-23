local opt = vim.opt

-- General
opt.termguicolors = true

-- Backup
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

--  Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 4 
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true

-- Line Wraping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- Cursor line
opt.cursorline = true
opt.scrolloff = 8

 -- Split Options
opt.splitright = true
opt.splitbelow = true

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Column line
opt.colorcolumn = "80"

