-- https://github.com/lewis6991/gitsigns.nvim

return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			on_attach = function(bufnr)
				local gitsigns = require("gitsigns")

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					opts.noremap = true
					vim.keymap.set(mode, l, r, opts)
				end

				-- Navigation
				map("n", "]c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "]c", bang = true })
					else
						gitsigns.nav_hunk("next")
					end
				end, { desc = "Jump to next git [c]hange" })

				map("n", "[c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "[c", bang = true })
					else
						gitsigns.nav_hunk("prev")
					end
				end, { desc = "Jump to previous git [c]hange" })

				map("n", "<leader>gd", gitsigns.diffthis, {
					desc = "[G]it [D]iff the current hunk",
				})

				map("n", "<leader>gs", gitsigns.stage_hunk, {
					desc = "[G]it [S]tage/Unstage the hunk under the cursor",
				})

				map('n', '<leader>gr', gitsigns.reset_hunk, {
					desc = "[G]it [R]eset the hunk under the cursor",
				})

				map('n', '<leader>gp', gitsigns.preview_hunk, {
					desc = "[G]it [P]review the hunk under the cursor",
				})
			end,
		},
	},
}
