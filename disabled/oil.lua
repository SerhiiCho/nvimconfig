-- https://github.com/stevearc/oil.nvim

return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            columns = { "icon" },
            keymaps = {
                ["C-h"] = false,
                ["C-p"] = false,
                ["C-P"] = "actions.preview",
            },
            view_options = {
                show_hidden = true,
            },
        })

        vim.keymap.set("n", "<leader>ex", "<CMD>Oil<CR>", {
            desc = "Open [e][x]plorer parent directory",
        })
    end,
}
