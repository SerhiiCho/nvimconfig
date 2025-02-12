-- https://github.com/nvim-pack/nvim-spectre

return {
	"nvim-pack/nvim-spectre",
	config = function()
		require("spectre").setup({
			replace_engine = {
				["sed"] = {
					cmd = "sed",
					args = { "-i", "", "-E" },
				},
			},
		})

		vim.keymap.set("n", "<leader>rr", '<cmd>lua require("spectre").toggle()<CR>', {
			desc = "[R]eplace",
		})

		vim.keymap.set("n", "<leader>rw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
			noremap = true,
			desc = "[R]eplace the current [w]ord",
		})

		vim.keymap.set("v", "<leader>rw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
			desc = "[R]eplace the current [w]ord",
		})

		vim.keymap.set("n", "<leader>rf", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
			desc = "[R]eplace the current [f]ile",
		})
	end,
}
