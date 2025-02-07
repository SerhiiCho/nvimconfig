function applySystemTheme()
  local systemTheme = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null"):read("*a")

  if systemTheme:match("Dark") then
    vim.opt.background = "dark"
  else
    vim.opt.background = "light"
  end
end

applySystemTheme()
