-- https://github.com/marko-cerovac/material.nvim

return {
	"marko-cerovac/material.nvim",
	config = function()
		require("material").setup({
			lualine_style = "default",
			styles = {
				comments = {
					italic = true,
				},
			},
		})

		vim.cmd("colorscheme material")
	end,
}
