-- https://github.com/ray-x/go.nvim

return {
	"ray-x/go.nvim",
	dependencies = {
		"ray-x/guihua.lua",
	},
	config = function()
		require("go").setup()

		vim.keymap.set("n", "<leader>gt", "<cmd>GoTest<CR>")
		vim.keymap.set("n", "<leader>gtf", "<cmd>GoTestFunc<CR>")
	end,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()',
}
