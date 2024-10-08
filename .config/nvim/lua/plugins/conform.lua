return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
        formatters_by_ft = require "configs.conform",
        format_on_save = { timeout_ms = 500, lsp_fallback = true },
        formatters = {
            shfmt = {
                prepend_args = { "-i", "2" },
            },
        },
    },
}
