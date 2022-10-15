local Remap = require("utils")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.xnoremap
local inoremap = Remap.inoremap

-- Telescope
local builtin = require('telescope.builtin')

nnoremap("<leader>ff", function()
	builtin.find_files()
end)

nnoremap("<leader>fg", function()
	builtin.live_grep()
end)

nnoremap("<leader>fb", function()
	builtin.buffers()
end)


nnoremap("<leader>fh", function()
	builtin.help_tags()
end)

nnoremap("<A-j>", function()
	vim.cmd[[m .+1<CR>==]]
end)

nnoremap("<A-k>", function()
	vim.cmd[[m .-2<CR>==]]
end)

vnoremap("<A-j>", ":m '>+1<CR>==gv")
vnoremap("<A-k>", ":m '<-2<CR>==gv")

inoremap("<A-j>", function()
	vim.cmd[[m .+1<CR>==]]
end)

inoremap("<A-k>", function()
	vim.cmd[[m .-2<CR>==]]
end)

-- Horizontal shift

nnoremap(">", ">>")
nnoremap("<", "<<")

vnoremap(">", ">gv")
vnoremap("<", "<gv")

-- Netrw

nnoremap("<leader>r", function()
	if pcall(vim.cmd, "Rex") then
	else
		vim.cmd[[Ex]]
	end
end)

nnoremap("<leader>e", function()
	vim.cmd[[Ex]]
end)

-- Git

nnoremap("<leader>gs", function()
	vim.cmd[[Neogit]]
end)

-- Other

nnoremap("<leader>h", function()
	vim.cmd[[nohlsearch]]
end)

