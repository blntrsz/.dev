local opt = vim.opt

vim.g.mapleader = " "

opt.guicursor = ""
opt.nu = true
opt.relativenumber = true
opt.hidden = true
opt.errorbells = false
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = true
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.cmdheight = 1
opt.updatetime = 50
opt.shortmess:append("c")
opt.colorcolumn = "80"
opt.clipboard = "unnamedplus"
opt.completeopt="menu,menuone,noselect"
