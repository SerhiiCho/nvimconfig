local theme = require("functions.system_theme")

-- Set <space> as the leader key
vim.g.mapleader = " "

-- Nerd Font
vim.g.have_nerd_font = true

theme.applySystemTheme()

-- Remove highlight after search has been done
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

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

require("vim_options")
require("config.lazy")
