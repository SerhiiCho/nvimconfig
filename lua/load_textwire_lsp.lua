local lsp_client

if not lsp_client then
	lsp_client = vim.lsp.start({
		name = "textwirelsp",
		cmd = { "/Users/serhiichornenkyi/www/open/textwire/lsp/main" },
	})
end

if not lsp_client then
	vim.notify("Textwire LSP Client error. Could not start", vim.log.levels.ERROR)
	return
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		if lsp_client then
			vim.lsp.buf_attach_client(0, lsp_client)
		end
	end,
})
