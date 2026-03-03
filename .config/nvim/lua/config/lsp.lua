vim.lsp.enable({
	"gopls",
	"lua_ls",
	"ts_ls",
	"svelte",
	"cssls",
	"jsonls",
})

vim.diagnostic.config({
	virtual_lines = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = false,
		wrap = true,
		max_width = 80,
		header = "",
		prefix = function(diagnostic, i, total)
			return "● ", "ERROR"
		end,
		suffix = "",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})
