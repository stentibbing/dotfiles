vim.pack.add{{src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main"}}

local ensure_installed = {
    "lua", "vim", "vimdoc", "query",
    "bash", "python", "javascript", "typescript", "tsx",
    "json", "yaml", "toml", "markdown", "markdown_inline",
    "html", "css", "svelte",
}

require("nvim-treesitter").install(ensure_installed)

vim.api.nvim_create_autocmd("FileType", {
    pattern = ensure_installed,
    callback = function()
        vim.treesitter.start()
    end,
})
