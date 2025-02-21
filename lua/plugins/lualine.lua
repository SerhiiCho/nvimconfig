-- https://github.com/nvim-lualine/lualine.nvim
local refresh_rate = 300

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				refresh = {
					statusline = refresh_rate,
					tabline = refresh_rate,
					winbar = refresh_rate,
				},
				section_separators = { left = "", right = "" },
				component_separators = { left = "|", right = "|" },
			},
			sections = {
				lualine_x = { "", "encoding", "filetype" },
			},
		})
	end,
}
