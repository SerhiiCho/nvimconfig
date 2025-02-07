-- Remove highlight after search has been done
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostics Keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

vim.keymap.set("v", "<C-c>", '"+y', { noremap = true })
