-- https://github.com/nvim-telescope/telescope.nvim

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local themes = require("telescope.themes")

		telescope.load_extension("fzf")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
			extensions = {
				fzf = {}
			},
		})

		local get_opts = function(desc)
			return {
				noremap = true,
				desc = desc,
			}
		end

		vim.keymap.set("n", "<C-p>", function()
			builtin.git_files(themes.get_ivy())
		end, get_opts("Search Git Files"))

		vim.keymap.set("n", "<leader>sf", function()
			builtin.find_files(themes.get_ivy())
		end, get_opts("[S]earch [F]iles"))

		vim.keymap.set("n", "<leader>sg", function()
			builtin.live_grep(themes.get_ivy())
		end, get_opts("[S]earch by [G]rep"))

		vim.keymap.set("n", "<leader>sb", function()
			builtin.buffers(themes.get_ivy())
		end, get_opts("[S]earch [B]uffers"))

		vim.keymap.set("n", "<leader>so", function()
			builtin.lsp_document_symbols(themes.get_ivy())
		end, get_opts("[S]earch [O]utline"))

		vim.keymap.set("n", "<leader>s.", function()
			builtin.oldfiles(themes.get_ivy())
		end, get_opts('[S]earch Recent Files ("." for repeat)'))

		vim.keymap.set("n", "<leader>sh", function()
			builtin.help_tags(themes.get_ivy())
		end, get_opts("[S]earch [H]elp"))
	end,
}
