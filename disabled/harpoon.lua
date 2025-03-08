-- https://github.com/ThePrimeagen/harpoon

return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		-- Add current file to a list
		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { desc = "[h]arpoon [a]dd" })

		-- Show Quick Menu
		vim.keymap.set("n", "<leader>hh", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "[h]arpoon show [h]arpoon" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-h>", function()
			harpoon:list():prev()
		end)

		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():next()
		end)
	end,
}
