return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("fzf-lua").setup({
			winopts = {
				height = 1,
				width = 1,
				row = 1,
				col = 1,
				backdrop = 100,
			},
		})
	end,
}
