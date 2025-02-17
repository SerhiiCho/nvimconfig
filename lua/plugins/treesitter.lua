-- https://github.com/nvim-treesitter/nvim-treesitter

local treesitter = {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"lua",
				"vim",
				"query",
				"javascript",
				"typescript",
				"html",
				"css",
				"scss",
				"php",
				"phpdoc",
				"go",
				"vue",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

return { treesitter }
