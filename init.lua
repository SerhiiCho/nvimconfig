require("config.lazy")

-- General Settings
vim.cmd("set nocompatible")
vim.cmd("set background=dark")
vim.cmd("set relativenumber")
vim.cmd("set noswapfile")
vim.cmd("set t_Co=256")
vim.cmd("set showmatch") -- highlight matching pairs of characters like brackets
vim.cmd("set path+=**")
vim.cmd("set wildmenu") -- enable enhanced menu completion when typing something
vim.cmd("set nowrap")
vim.cmd("set hlsearch") -- highlight all matches in a document
vim.cmd("set ignorecase")
vim.cmd("set incsearch")
vim.cmd("set smartcase")
vim.cmd("syntax enable")

-- Spaces Tabs Settings
local ident = 4
vim.cmd("set tabstop=" .. ident)
vim.cmd("set softtabstop=" .. ident)
vim.cmd("set shiftwidth=" .. ident)
vim.cmd("set smarttab")
vim.cmd("set autoindent")

-- Dispay Whitespace Characters
vim.cmd("set list")
vim.cmd("set listchars=")
vim.cmd("set listchars+=tab:··")
vim.cmd("set listchars+=trail:·")

-- Set Theme
vim.cmd.colorscheme "catppuccin"

-- Set Custom Mapping
vim.cmd("nnoremap <CR> :nohlsearch<cr>")
