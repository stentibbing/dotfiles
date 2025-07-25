local map = vim.api.nvim_set_keymap

map("n", "<leader>ff", ":Fzf files<cr>", { noremap = true, silent = true })
map("n", "<leader>fg", ":Fzf live_grep<cr>", { noremap = true, silent = true })
map("n", "<leader>fd", ":Fzf diagnostics_document<cr>", { noremap = true, silent = true })

map("n", "<C-f>", ":Oil<cr>", { noremap = true, silent = true })

-- Global yank and paste
map("x", "<leader>y", '"+y', { noremap = true, silent = true })
map("n", "<leader>p", '"+p', { noremap = true, silent = true })

-- Copilot
vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- CodeCompanion
vim.keymap.set("n", "<leader>c", ":CodeCompanionChat<cr>", { noremap = true, silent = true })
