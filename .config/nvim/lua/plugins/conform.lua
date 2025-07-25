return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				go = { "goimports", "gofmt" },
				lua = { "stylua" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				svelte = { "prettierd" },
				css = { "prettierd" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
