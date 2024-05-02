require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

-- Cursor style
o.guicursor = "n-v-c:block-Cursor"

-- Line numbers & relative line numbers
o.nu = true
o.relativenumber = true

-- Wrap lines exceeding window size (not saving into file)
o.wrap = true
o.breakindent = true

-- Tabs appear 4 spaces
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- Indentation rules
o.cindent = true
o.autoindent = true
o.smartindent = true

o.swapfile = false
o.backup = false

o.hlsearch = false
o.incsearch = true

-- Scroll document 8 lines before reaching end of window
o.scrolloff = 8
o.signcolumn = "yes"

-- Wrap guide line
o.colorcolumn = "120"

-- Set highlight on search
o.hlsearch = true

-- Enable mouse mode
o.mouse = 'a'

-- Save undo history
o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
o.ignorecase = true
o.smartcase = true

-- Decrease update time
o.updatetime = 250
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = 'menuone,noselect'
