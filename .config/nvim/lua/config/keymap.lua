local map = vim.api.nvim_set_keymap

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<cr>", { desc = "Telescope find files" })
map("n", "<leader>fg", ":Telescope live_grep<cr>", { desc = "Telescope live grep" })
map("n", "<leader>fb", ":Telescope buffers<cr>", { desc = "Telescope buffers" })
map("n", "<leader>fh", ":Telescope help_tags<cr>", { desc = "Telescope buffers" })
map("n", "<leader>fd", ":Telescope diagnostics<cr>", { desc = "Telescope diagnostics" })

-- Global yank and paste
map("x", "<leader>y", '"+y', { noremap = true, silent = true })
map("n", "<leader>p", '"+p', { noremap = true, silent = true })

-- Oil
map("n", "<C-f>", ":Oil<cr>", { desc = "Oil nvim" })

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

-- Copilot
vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- CodeCompanion
vim.keymap.set("n", "<leader>c", ":CodeCompanionChat<cr>", { noremap = true, silent = true })

-- ToggleTerminal
vim.keymap.set("n", "<leader>t", ":ToggleTerm<cr>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("t", "<leader>tt", "<C-\\><C-n>:ToggleTerm<cr>", { desc = "Exit terminal mode and toggle terminal" })
