-- https://github.com/github/copilot.vim
-- https://github.com/CopilotC-Nvim/CopilotChat.nvim

return {
	{
		"github/copilot.vim",
		config = function()
			vim.keymap.set("n", "<leader>cd", "<CMD>Copilot disable<CR>", {
				desc = "Disable Copilot",
			})

			vim.keymap.set("n", "<leader>ce", "<CMD>Copilot enable<CR>", {
				desc = "Enable Copilot",
			})
		end,
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		config = function()
			require("CopilotChat").setup({})

			vim.keymap.set("n", "<leader>co", "<CMD>CopilotChatToggle<CR>", {
				desc = "[C]opilot [O]pen Chat",
			})

			vim.keymap.set("n", "<leader>cs", "<CMD>CopilotChatStop<CR>", {
				desc = "[C]opilot [S]top writing response",
			})
		end,
	},
}
