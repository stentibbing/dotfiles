return {
	"neovim/nvim-lspconfig",
	config = function()
		require("lspconfig").lua_ls.setup({
			settings = {
				Lua = {
					workspace = {
						library = { vim.fn.getcwd() },
						checkThirdParty = false,
					},
					telemetry = { enable = false },
				},
			},
		})
	end,
}
