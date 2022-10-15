local M = {}

M.lsp_servers = {
	"typescript-language-server",
	"lua-language-server"
}

M.lsp_server_coonfigs = {
	sumneko_lua = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" }
				}
			}
		}
	},
	tsserver = {}
}

return M
