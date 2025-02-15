-- Remove highlight after search has been done
vim.keymap.set("n", "<CR>", "<cmd>nohlsearch<CR>")

-- Diagnostics Keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

-- Copy from visual mode to system clipboard
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true })

vim.keymap.set("n", ",py", ":!clear && python3 %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",php", ":!clear && php %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",node", ":!clear && node %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",js", ":!clear && node %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",go", ":!clear && go run %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",bash", ":!clear && ./%<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",gh", ":!clear && ghci %<CR>", { noremap = true, silent = true })
