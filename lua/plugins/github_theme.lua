-- https://github.com/projekt0n/github-nvim-theme

return {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
        require("github-theme").setup({
            options = {
                styles = {
                    comments = "italic",
                    keywords = "bold",
                },
            },
        })

        if vim.o.background == "dark" then
            vim.cmd("colorscheme github_dark_default")
        else
            vim.cmd("colorscheme github_light_high_contrast")
        end
    end,
}
