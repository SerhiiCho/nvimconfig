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
				"tsx",
				"html",
				"css",
				"scss",
				"php",
				"phpdoc",
				"go",
				"vue",
				"dockerfile",
			},
			highlight = {
				enable = true,

				-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
				disable = function(_, buf)
					local max_filesize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,

				additional_vim_regex_highlighting = true,
			},
			indent = { enable = true },
		})
	end,
}

return { treesitter }
