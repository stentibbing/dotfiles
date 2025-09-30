return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config.lua_ls = {
			settings = {
				Lua = {
					workspace = {
						library = { vim.fn.getcwd() },
						checkThirdParty = false,
					},
					telemetry = { enable = false },
				},
			},
		}
	end,
}
