-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim
-- https://github.com/neovim/nvim-lspconfig

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                --- @type string[]
                ensure_installed = {
                    "lua_ls", -- lua
                    "gopls", -- go
                    "ts_ls", -- typescript
                    "html", -- html
                    "cssls", -- css
                    "tailwindcss", -- tailwindcss
                    "intelephense", -- php
                    "phpactor", -- php
                    "volar", -- vue 3
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local opts = { noremap = true, silent = true }

            local on_attach = function(_, bufnr)
                opts.buffer = bufnr

                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts)
                vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
                vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
            end

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.lua_ls.setup({
                on_attach = on_attach,
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            lspconfig.gopls.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })

            lspconfig.html.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })

            lspconfig.cssls.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })

            lspconfig.tailwindcss.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })

            lspconfig.intelephense.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })

            lspconfig.phpactor.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })

            -- WE DON'T NEED to setup ts_ls because it's already setup by volar.
            -- If you remove volar, you need to setup ts_ls here instead.
            lspconfig.volar.setup({
                on_attach = on_attach,
                capabilities = capabilities,
                filetypes = {
                    "vue",
                    "typescript",
                    "javascript",
                    "javascriptreact",
                    "typescriptreact",
                },
                init_options = {
                    vue = {
                        hybridMode = false,
                    },
                },
            })
        end,
    },
}
