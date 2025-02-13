-- https://github.com/nvim-telescope/telescope.nvim

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<C-p>", builtin.git_files, {
			noremap = true,
			desc = "Search files not ignored by git",
		})

		vim.keymap.set("n", "<leader>sf", builtin.find_files, {
			noremap = true,
			desc = "[S]earch [F]iles",
		})

		vim.keymap.set("n", "<leader>sg", builtin.live_grep, {
			noremap = true,
			desc = "[S]earch by [G]rep",
		})

		vim.keymap.set("n", "<leader>sb", builtin.buffers, {
			noremap = true,
			desc = "[S]earch [B]uffers",
		})

		vim.keymap.set("n", "<leader>so", "<cmd>Telescope lsp_document_symbols<CR>", {
			noremap = true,
			desc = "[S]earch [O]utline",
		})

		vim.keymap.set("n", "<leader>s.", builtin.oldfiles, {
			noremap = true,
			desc = '[S]earch Recent Files ("." for repeat)',
		})

		vim.keymap.set("n", "<leader>sh", builtin.help_tags, {
			noremap = true,
			desc = "[S]earch [H]elp",
		})

		-- vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
		-- vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
		-- vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
		-- vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
	end,
}
