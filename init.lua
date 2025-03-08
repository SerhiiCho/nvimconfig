-- Set <space> as the leader key
vim.g.mapleader = " "

-- Nerd Font
vim.g.have_nerd_font = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Add file type detection for .tw and .tw.html
vim.filetype.add({
	extension = {
		tw = "textwire",
		["tw.html"] = "textwire",
	},
})

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("textwire.load_textwire_lsp")
	end,
})

require("config.golang")
require("config.status_line")
require("config.lua")
require("config.remap")
require("config.vim_options")
require("config.system_theme")
require("config.autocmd")
require("config.lazy")
require("config.tmux")
require("config.blade")

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.textwire = {
	install_info = {
		url = "https://github.com/textwire/tree-sitter-textwire",
		files = { "src/parser.c", "src/scanner.c" },
		branch = "main",
		-- if stand-alone parser without npm dependencies
		generate_requires_npm = false,
		-- if directory contains pre-generated src/parser.c
		requires_generate_from_grammar = true,
	},
}
