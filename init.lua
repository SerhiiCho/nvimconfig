-- Set <space> as the leader key
vim.g.mapleader = " "

-- Nerd Font
vim.g.have_nerd_font = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits
vim.opt.mouse = "a"

-- Enable break indent for longs wrapping lines
vim.opt.breakindent = true

-- Enable undo history
vim.opt.undofile = true

-- Keep signcolumn on by default that is visible on the left of line numbers.
-- When there is an error or warning, you'll see a letter in that column
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Display which-key popup sooner
vim.opt.timeoutlen = 300

-- Preview substitutions live, as you type
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- Set highlight on search, but clear on <Esc> in normal mode
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "jj", "<Esc>")

-- General settings
vim.opt.background = "dark"
vim.cmd("set nocompatible")
vim.cmd("set noswapfile")
vim.cmd("set t_Co=256")

-- Highlight matching pairs of characters like brackets
vim.opt.showmatch = true
vim.cmd("set path+=**")

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable enhanced menu completion when typing something
vim.opt.wildmenu = true
vim.cmd("set nowrap")
vim.cmd("syntax enable")

-- Spaces Tabs Settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.autoindent = true

-- Dispay Whitespace Characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = "·", nbsp = '␣' }

-- Diagnostics Keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

-- Highlight when yanking text
-- Try it with `yap` in normal mode
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

require("config.lazy")
