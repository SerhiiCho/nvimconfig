-- https://github.com/mfussenegger/nvim-dap
--
return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")

		vim.keymap.set('n', '<Leader>db', dap.toggle_breakpoint, {
			noremap = true,
			desc = "[D]ebug add a [B]reakpoint",
		})

		vim.keymap.set('n', '<F5>', dap.continue, {
			noremap = true,
			desc = "Debug Continue",
		})

		vim.keymap.set('n', '<F10>', dap.step_over, {
			noremap = true,
			desc = "Debug Step Over",
		})

		vim.keymap.set('n', '<F11>', dap.step_into, {
			noremap = true,
			desc = "Debug Step Into",
		})

		vim.keymap.set('n', '<F12>', dap.step_out, {
			noremap = true,
			desc = "Debug Step Out",
		})
	end,
}
