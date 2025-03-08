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

-- Define the :Reload command
-- Function to detect system theme and set colorscheme
local function set_colorscheme()
    local systemTheme = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null"):read("*a")

    if systemTheme:match("Dark") then
        vim.cmd("colorscheme github_dark_dimmed") -- Use dark theme
    else
        vim.cmd("colorscheme github_light") -- Use light theme
    end
end

-- Define the :Reload command
vim.api.nvim_create_user_command("Reload", function()
    -- Save all buffers
    vim.cmd("wa")

    -- Source the init.lua file to reload the configuration
    vim.cmd("source $MYVIMRC")

    -- Reapply the colorscheme based on system theme
    set_colorscheme()

    -- Notify the user
    print("Neovim configuration reloaded and theme updated!")
end, {})
