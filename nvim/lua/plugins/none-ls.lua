return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.codespell,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.sqlfluff.with({
                    extra_args = { "--dialect", "postgres" },
                }),
            },
        })

        vim.keymap.set("n", "<leader>sf", vim.lsp.buf.format, {})
    end,
}
