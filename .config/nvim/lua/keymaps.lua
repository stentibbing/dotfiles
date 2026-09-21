local telescopeBuiltin = require('telescope.builtin')

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<leader>f', telescopeBuiltin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', telescopeBuiltin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', telescopeBuiltin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>h', telescopeBuiltin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>s', telescopeBuiltin.lsp_document_symbols, { desc = 'Telescope symbols' })
vim.keymap.set('n', '<leader>d', telescopeBuiltin.diagnostics, { desc = 'Telescope diagnostics' })


vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("n", "<leader>P", '"+P', { desc = "Paste from system clipboard (before cursor)" })

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+y$', { desc = "Yank to end of line to system clipboard" })
