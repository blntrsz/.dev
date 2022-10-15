local opt = vim.opt
local g = vim.g

vim.cmd[[colorscheme poimandres]]


local indent = 2

g.mapleader = " "
opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.undofile = true

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = indent
opt.ruler = true
opt.tabstop = indent
opt.shiftwidth = indent
opt.scrolloff = 8

opt.completeopt = { "menu", "menuone", "noselect" }
