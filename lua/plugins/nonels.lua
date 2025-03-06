-- https://github.com/nvimtools/none-ls.nvim

return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.phpstan,
                null_ls.builtins.formatting.pint,

                null_ls.builtins.formatting.prettier.with({
                    runtime_condition = function(params)
                        local utils = require("null-ls.utils")
                        local root =
                            utils.root_pattern(".prettierrc", "Makefile", ".git", "package.json")(params.bufname)
                        return root and utils.path.exists(utils.path.join(root, ".prettierrc"))
                    end,
                }),
            },
        })

        vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
    end,
}
