-- https://github.com/romgrk/barbar.nvim

return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false
			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }

			map("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", opts)
			map("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", opts)
			map("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", opts)
			map("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", opts)
			map("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", opts)
			map("n", "<leader>6", "<Cmd>BufferGoto 6<CR>", opts)
			map("n", "<leader>7", "<Cmd>BufferGoto 7<CR>", opts)
			map("n", "<leader>8", "<Cmd>BufferGoto 8<CR>", opts)
			map("n", "<leader>9", "<Cmd>BufferGoto 9<CR>", opts)
			map("n", "<leader>0", "<Cmd>BufferLast<CR>", opts)
			map("n", "<leader>W", "<Cmd>BufferClose<CR>", opts)
		end,
		opts = {
			animation = true,
			hide = { extensions = false, inactive = false },
			highlight_inactive_file_icons = true,
			icons = {
				filetype = {
					-- Requires `nvim-web-devicons` if `true`
					enabled = true,
				},
			},
		},
		version = "^1.0.0",
	},
}
