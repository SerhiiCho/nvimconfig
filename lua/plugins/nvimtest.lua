-- https://github.com/klen/nvim-test

return {
	"klen/nvim-test",
	config = function()
		require('nvim-test').setup()

		vim.keymap.set("n", "<leader>tn", '<cmd>TestNearest<CR>', {
			desc = "[T]est [N]earest",
		})

		vim.keymap.set("n", "<leader>tl", '<cmd>TestLast<CR>', {
			desc = "[T]est [L]ast",
		})

		vim.keymap.set("n", "<leader>tf", '<cmd>TestFile<CR>', {
			desc = "[T]est [F]ile",
		})

		vim.keymap.set("n", "<leader>ts", "<cmd>TestSuite<CR>", {
			desc = "[T]est [S]uite",
		})

		vim.keymap.set("n", "<leader>te", "<cmd>TestEdit<CR>", {
			desc = "[T]est [E]dit for the current file",
		})
	end,
}
