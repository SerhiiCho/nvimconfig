-- Set <space> as the leader key
vim.g.mapleader = " "

-- Nerd Font
vim.g.have_nerd_font = true

require("config.keymaps")
require("config.vim_options")
require("config.system_theme")
require("config.autocmd")
require("config.go_import")
require("config.lazy")
