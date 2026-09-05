local telescopeBuiltin= require('telescope.builtin')

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<leader>ff', telescopeBuiltin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescopeBuiltin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescopeBuiltin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescopeBuiltin.help_tags, { desc = 'Telescope help tags' })


vim.keymap.set("n", "<ctrl>f", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("n", "<leader>P", '"+P', { desc = "Paste from system clipboard (before cursor)" })
