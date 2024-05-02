---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "rosepine",
  transparency = true,
  tabufline = {
    enabled = false
  },
  statusline = {
    theme = "vscode_colored"
  },
	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

return M
