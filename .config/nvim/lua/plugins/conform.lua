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

-- Format embedded CSS in <style> tags (via treesitter injections)
-- xmllint indents the XML itself; injected formats the embedded CSS
formatters_by_ft.xml = { "xmllint", "injected" }
formatters_by_ft.xslt = { "xmllint", "injected" }
formatters_by_ft.xsd = { "xmllint" }

require("conform").setup {
	formatters_by_ft = formatters_by_ft,
	formatters = {
		-- format even when the XML is malformed (may drop/rewrite broken tags)
		xmllint = { prepend_args = { "--recover" } },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
}

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	require("conform").format({ lsp_format = "fallback" })
end, { desc = "Format buffer" })
