local lsp_client

-- todo: fix the issue related to receiving textDocument/didOpen
-- event when first open neovim on any file type. It should only
-- send this even on specific file types

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

vim.filetype.add({
    extension = {
        tw = "textwire",
        ["tw.html"] = "textwire",
    },
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "textwire",
	callback = function()
		if lsp_client then
			vim.lsp.buf_attach_client(0, lsp_client)
		end
	end,
})
