return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("fzf-lua").setup({
			winopts = {
				fullscreen = true,
				border = "none",
				preview = {
					border = "none",
				},
			},
		})
	end,
}
