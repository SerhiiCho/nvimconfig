-- Set <space> as the leader key
vim.g.mapleader = " "

-- Nerd Font
vim.g.have_nerd_font = true

-- todo: termporary code for testing textwirelsp
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("load_textwire_lsp")
	end
})

require("config.go_import")
require("config.keymaps")
require("config.vim_options")
require("config.system_theme")
require("config.autocmd")
require("config.lazy")
