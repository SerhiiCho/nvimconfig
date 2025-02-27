-- Remove highlight after search has been done
vim.keymap.set("n", "<CR>", "<cmd>nohlsearch<CR>")

vim.keymap.set("v", "<C-c>", '"+y', {
	desc = "Copy from visual mode to system clipboard",
	noremap = true,
})

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex, {
	desc = "Open a file [e][x]plorer at the current file's location",
	noremap = true,
})

vim.keymap.set("n", "<leader>xx", "<cmd>!chmod +x %<CR>", {
	desc = "Make the current file executable",
	silent = true,
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
