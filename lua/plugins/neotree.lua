--- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			filesystem = {
				filtered_items = {
					visible = true,
					hide_gitignored = false,
					never_show = {
						".DS_Store",
						"thumbs.db",
					},
				},
			},
		})

		vim.keymap.set("n", "<C-\\>", ":Neotree toggle<CR>", {})
	end,
}
