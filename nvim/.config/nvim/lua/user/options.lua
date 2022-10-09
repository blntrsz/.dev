local opt = vim.opt
local g = vim.g

g.mapleader = " "
opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.undofile = true

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = true

opt.completeopt = { "menu", "menuone", "noselect" }
