-- Remove highlight after search has been done
vim.keymap.set("n", "<CR>", "<cmd>nohlsearch<CR>")

-- Diagnostics Keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

-- Copy from visual mode to system clipboard
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true })

-- Excecute files for different languages
vim.keymap.set("n", ",,", ":!php %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",py", ":!python3 %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",node", ":!node %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",js", ":!node %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",go", ":!go run %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",bash", ":!./%<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",gh", ":!ghci %<CR>", { noremap = true, silent = true })
