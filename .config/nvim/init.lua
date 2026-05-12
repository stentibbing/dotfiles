--- Plugins ---
vim.pack.add({
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/rafamadriz/friendly-snippets",
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("^1"),
		-- Specify how to build the plugin depts to use faster rust binary
		checkout = function(plugin)
			vim.system({ "cargo", "build", "--release" }, { cwd = plugin.dir }):wait()
		end,
	},
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/windwp/nvim-autopairs",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/ibhagwan/fzf-lua",
	"https://github.com/github/copilot.vim",
	"https://github.com/olimorris/codecompanion.nvim",
	"https://github.com/tpope/vim-sleuth",
	"https://github.com/folke/flash.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/NopAngel/nimmy.vim",
	"https://github.com/marcos-venicius/zenburned",
	"https://github.com/fdemb/dusk.nvim",
	"https://github.com/eggfriedrice24/eggfriedrice.nvim"
})

require("nvim-treesitter").setup({
	auto_install = true,
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
		"yaml",
	},
})

require("blink.cmp").setup({
	appearance = {
		use_nvim_cmp_as_default = true,
	},
	completion = {
		documentation = { auto_show = false },
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = {
		implementation = "prefer_rust_with_warning"
	},
})

require("conform").setup({
	formatters_by_ft = {
		go = { "goimports", "gofmt" },
		lua = { "stylua" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		svelte = { "prettierd" },
		css = { "prettierd" },
		html = { "prettierd" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

require("nvim-autopairs").setup()
require("oil").setup()

require("fzf-lua").setup({
	winopts = {
		fullscreen = true,
		border = "none",
		preview = {
			title = false,
			border = "none",
		},
	},
	diagnostics = {
		actions = {
			["ctrl-y"] = function(selected)
				if selected and #selected > 0 then
					vim.fn.setreg("+", selected[1])
					vim.notify("Copied to clipboard")
				end
			end,
		},
	},
})

require("codecompanion").setup({
	strategies = {
		chat = {
			adapter = {
				name = "copilot",
				model = "claude-sonnet-4.5",
			},
		},
	},
})

require("flash").setup({
	modes = {
		char = {
			jump_labels = true,
		}
	}
})

--- LSP ---
vim.lsp.enable({
	"gopls",
	"lua_ls",
	"ts_ls",
	"svelte",
	"cssls",
	"jsonls",
})

vim.lsp.config.lua_ls = {
	settings = {
		Lua = {
			workspace = {
				library = { vim.fn.getcwd() },
				checkThirdParty = false,
			},
			telemetry = { enable = false },
		},
	},
}

--- Diagnostic messages ---
vim.diagnostic.config({
	virtual_lines = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = false,
		wrap = true,
		max_width = 80,
		header = "",
		prefix = function(diagnostic, i, total)
			return "● ", "ERROR"
		end,
		suffix = "",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

--- Options ---
vim.cmd.colorscheme("nimmy-hard")
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.updatetime = 500
vim.o.winborder = "rounded"
vim.g.copilot_no_tab_map = true

--- Keymaps ---
local map = vim.keymap.set

map("n", "<leader>ff", require("fzf-lua").files, { desc = "FzfLua find files" })
map("n", "<leader>fb", require("fzf-lua").buffers, { desc = "FzfLua find buffers" })
map("n", "<leader>fg", require("fzf-lua").live_grep, { desc = "FzfLua live grep" })
map("n", "<leader>fd", require("fzf-lua").diagnostics_document, { desc = "FzfLua diagnostics" })
map("x", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })
map("n", "<leader>c", require("codecompanion").toggle, { desc = "Toggle CodeCompanion" })
map("n", "<leader>t", vim.cmd.ToggleTerm, { desc = "Toggle terminal" })
map("t", "<leader>tt", "<C-\\><C-n>:ToggleTerm<cr>", { desc = "Exit terminal mode and toggle terminal" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
map("n", "<C-f>", require("oil").open, { desc = "Open Oil file browser" })
map("i", "<C-j>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
	desc = "Accept Copilot suggestion",
})

--- Autocommands ---
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("CursorHold", {
	desc = "Show diagnostics in floating window on hover",
	group = vim.api.nvim_create_augroup("diagnostic-float", { clear = true }),
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
})
