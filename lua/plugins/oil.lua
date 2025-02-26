-- https://github.com/stevearc/oil.nvim

return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            columns = { "icon" },
            keymaps = {
                ["C-h"] = false,
            },
            view_options = {
                show_hidden = true,
            },
        })

        vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", {
            desc = "Open parent directory",
        })
    end,
}
