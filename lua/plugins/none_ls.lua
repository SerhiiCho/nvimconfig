-- https://github.com/nvimtools/none-ls.nvim

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					runtime_condition = function(params)
						local utils = require("null-ls.utils")
						-- use whatever root markers you want to check - these are the defaults
						local root = utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json")(params.bufname)
						return root and utils.path.exists(utils.path.join(root, ".prettierrc"))
					end,
				}),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
