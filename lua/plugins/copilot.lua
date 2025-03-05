-- https://github.com/github/copilot.vim

return {
    "github/copilot.vim",
    config = function()
        vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>", {
            desc = "Disable Copilot",
        })

        vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>", {
            desc = "Enable Copilot",
        })
    end,
}
