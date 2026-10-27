vim.pack.add{{src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main"}}

local ensure_installed = {
    "lua", "vim", "vimdoc", "query",
    "bash", "python", "javascript", "typescript", "tsx",
    "json", "yaml", "toml", "markdown", "markdown_inline",
    "html", "css", "svelte", "latex", "xml"
}

require("nvim-treesitter").install(ensure_installed)

vim.treesitter.language.register("xml", { "xslt", "xsd" })

vim.api.nvim_create_autocmd("FileType", {
    pattern = vim.list_extend({ "xslt", "xsd" }, ensure_installed),
    callback = function()
        vim.treesitter.start()
    end,
})
