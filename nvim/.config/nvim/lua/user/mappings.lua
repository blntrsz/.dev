local Remap = require("utils")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.xnoremap
local inoremap = Remap.inoremap

nnoremap("<leader>ff", function()
	require('telescope.builtin').find_files()
end)
