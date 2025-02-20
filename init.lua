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

require("serhii.golang")
require("serhii.remap")
require("serhii.vim_options")
require("serhii.system_theme")
require("serhii.autocmd")
require("serhii.lazy")
