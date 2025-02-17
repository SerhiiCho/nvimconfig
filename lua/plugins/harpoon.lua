-- https://github.com/ThePrimeagen/harpoon

return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		-- Add current file to a list
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)

		-- Show Quick Menu
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-h>", function()
			harpoon:list():prev()
		end)

		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():next()
		end)
	end,
}
