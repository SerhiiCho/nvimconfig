-- Highlight when yanking text
-- Try it with `yap` in normal mode
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Format file before writing
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.ts", "*.js" },
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

-- Enable word wrap for some files
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text" },
    callback = function()
        vim.opt.wrap = true -- Enable word wrap
        vim.opt.linebreak = true -- Prevent breaking words in half
    end,
})
