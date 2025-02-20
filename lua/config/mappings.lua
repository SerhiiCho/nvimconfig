vim.keymap.set("n", "<CR>", "<cmd>nohlsearch<CR>", {
	desc = "Remove highlight after search has been done",
	noremap = true,
})

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {
	desc = "Go to previous [D]iagnostic message",
	noremap = true,
})

vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {
	desc = "Go to next [D]iagnostic message",
	noremap = true,
})

vim.keymap.set("v", "<C-c>", '"+y', {
	desc = "Copy from visual mode to system clipboard",
	noremap = true,
})

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex, {
	desc = "Open a file [e][x]plorer at the current file's location",
	noremap = true,
})

-- Excecute files for different languages
vim.keymap.set("n", ",,", ":!php %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",py", ":!python3 %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",node", ":!node %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",js", ":!node %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",go", ":!go run %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",bash", ":!./%<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",gh", ":!ghci %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",c", ":!gcc % -o temporary && ./temporary && rm temporary<CR>", { noremap = true, silent = true })
