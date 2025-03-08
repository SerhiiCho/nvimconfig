-- Display line numbers in the left column
vim.opt.number = true
vim.opt.relativenumber = true

-- Move cursor to the split screen after splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Make :find and :edit search recursively in subdirectories
vim.opt.path:append("**")

-- Enable break indent for longs wrapping lines
vim.opt.breakindent = true

-- Disable word wrap
vim.opt.wrap = false

-- Enable undo history
vim.opt.undofile = true

-- Keep signcolumn on by default that is visible on the left of line numbers.
-- When there is an error or warning, you'll see a letter in that column
vim.opt.signcolumn = "yes"

-- A nice way to keep your code within a certain width
vim.opt.colorcolumn = "80"

-- VIM update time (200 is fine for most users)
vim.opt.updatetime = 100

-- Decrease mapped sequence wait time
-- Display which-key popup sooner
vim.opt.timeoutlen = 300

-- Preview substitutions live, as you type
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 7

-- Hightlight all search results
vim.opt.hlsearch = true

-- Highlight search result as you type
vim.opt.incsearch = true

-- Highlight matching pairs of characters like brackets
vim.opt.showmatch = true

-- Enable enhanced menu completion when typing something
vim.opt.wildmenu = true

-- Spaces Tabs Settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Dispay Whitespace Characters
-- vim.opt.list = false
-- vim.opt.listchars = {
-- 	tab = "» ",
-- 	space = "⋅",
-- 	trail = "⋅",
-- 	nbsp = "␣",
-- }
