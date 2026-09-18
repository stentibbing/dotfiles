local opt = vim.opt
opt.guicursor = "i:block"
opt.colorcolumn = "80"
opt.termguicolors = true
opt.ignorecase = true
opt.swapfile = false
opt.autoindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.wrap = false
opt.scrolloff = 8
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.completeopt = { "menuone", "popup", "noinsert" }
opt.winborder = "rounded"
opt.hlsearch = false

vim.cmd.filetype("plugin indent on")
vim.cmd.colorscheme "oxocarbon"
