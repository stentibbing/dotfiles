vim.pack.add { { src = "https://github.com/stevearc/conform.nvim" } }

local prettier_filetypes = {
	"javascript", "javascriptreact", "typescript", "typescriptreact",
	"svelte", "html", "css", "scss", "less",
	"json", "jsonc", "yaml", "markdown", "graphql",
}

local formatters_by_ft = {}
for _, ft in ipairs(prettier_filetypes) do
	formatters_by_ft[ft] = { "prettierd" }
end

require("conform").setup {
	formatters_by_ft = formatters_by_ft,
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
}

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	require("conform").format({ lsp_format = "fallback" })
end, { desc = "Format buffer" })
