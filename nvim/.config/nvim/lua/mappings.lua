local Remap = require("utils")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
-- local xnoremap = Remap.xnoremap
-- local inoremap = Remap.inoremap

-- Telescope
local builtin = require('telescope.builtin')

nnoremap("<C-p>", function()
	builtin.find_files()
end)

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

-- move commands

nnoremap("<A-j>", function()
	vim.cmd [[m .+1<CR>==]]
end)

nnoremap("<A-k>", function()
	vim.cmd [[m .-2<CR>==]]
end)

vnoremap("<A-j>", ":m '>+1<CR>==gv")
vnoremap("<A-k>", ":m '<-2<CR>==gv")

-- Horizontal shift

nnoremap(">", ">>")
nnoremap("<", "<<")

vnoremap(">", ">gv")
vnoremap("<", "<gv")

-- Netrw

nnoremap("<leader>r", function()
	if pcall(vim.cmd, "Rex") then
	else
		vim.cmd [[Ex]]
	end
end)

nnoremap("<leader>e", function()
	vim.cmd [[Ex]]
end)

-- Git

nnoremap("<leader>gs", function()
	require("neogit").open({ kind = "replace" })
end)

nnoremap("<leader>gh", function()
	vim.cmd [[Gitsigns preview_hunk]]
end)

-- Harpoon
local harpoon_ui = require("harpoon.ui")

nnoremap("<leader>hh", function() require("harpoon.mark").add_file() end)
nnoremap("<leader>ha", function() harpoon_ui.toggle_quick_menu() end)

nnoremap("<A-1>", function() harpoon_ui.nav_file(1) end)
nnoremap("<A-2>", function() harpoon_ui.nav_file(2) end)
nnoremap("<A-3>", function() harpoon_ui.nav_file(3) end)
nnoremap("<A-4>", function() harpoon_ui.nav_file(4) end)

-- LSP

nnoremap("<leader>pp", function()
	vim.lsp.buf.format()
end)

-- Other

nnoremap("<leader>l", function()
	vim.cmd [[nohlsearch]]
end)

