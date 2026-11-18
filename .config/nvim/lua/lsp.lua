vim.lsp.enable({
	"bashls",
	"gopls",
	"lua_ls",
	"svelte",
	"cssls",
	"ts_ls",
	"lemminx"
})

vim.lsp.config("lemminx", {
	filetypes = { "xml", "xsd", "xslt", "svg" },
})

vim.diagnostic.config({ virtual_text = true })

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf, desc = 'vim.lsp.buf.definition()' })
	end,
})

vim.filetype.add({
	extension = { gotmpl = 'gotmpl' },
})
