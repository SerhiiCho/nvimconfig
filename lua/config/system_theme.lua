local applySystemTheme = function()
    local systemTheme = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null"):read("*a")

    if systemTheme:match("Dark") then
        vim.opt.background = "dark"
    else
        vim.opt.background = "light"
    end
end

-- Keey the cursor in VIM style in insert mode
vim.o.guicursor = "n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait0-blinkoff0-blinkon0-Cursor/lCursor"

applySystemTheme()
