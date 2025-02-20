-- Set <space> as the leader key
vim.g.mapleader = " "

-- Nerd Font
vim.g.have_nerd_font = true

-- Add file type detection for .tw and .tw.html
vim.filetype.add({
	extension = {
		tw = "textwire",
		["tw.html"] = "textwire",
	},
})

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("load_textwire_lsp")
	end
})

require("config.golang")
require("config.mappings")
require("config.vim_options")
require("config.system_theme")
require("config.autocmd")
require("config.lazy")
