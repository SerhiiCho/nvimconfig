vim.api.nvim_create_user_command("T", function(opts)
    local arg = opts.args
    if arg == "" then
        print("Usage: :T <session_name>") -- Show a message if no argument is provided
    elseif arg == "attach" then
        vim.fn.system("tmux attach")
    elseif arg == "detach" then
        vim.fn.system("tmux detach")
    else
        vim.fn.system("tmux switch-client -t " .. arg)
    end
end, { nargs = "?" }) -- "?" makes the argument optional
