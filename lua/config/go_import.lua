local importGoPackages = function()
	-- Save cursor position
	local save_cursor = vim.api.nvim_win_get_cursor(0)

	-- Run goimports
	vim.cmd("silent! %!goimports")

	-- Move one line down after restoring position
	-- Ensure within bounds
	local new_line = math.min(save_cursor[1] + 1, vim.api.nvim_buf_line_count(0))
	vim.api.nvim_win_set_cursor(0, { new_line, save_cursor[2] })
end

vim.keymap.set("n", "<leader>i", importGoPackages)
