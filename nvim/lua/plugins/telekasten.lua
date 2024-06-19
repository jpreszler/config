return {
    'renerocksai/telekasten.nvim',
    dependencies = {'nvim-telescope/telescope.nvim'},
    config = function ()
        local config = require("telekasten")
        config.setup({
            home = vim.fn.expand("~/.telekasten"),
        })
        -- Launch panel if nothing is typed after <leader>z
        vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

        -- Most used functions
        vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
        vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
        vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
        vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
        vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
        vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
        vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")

        -- Call insert link automatically when we start typing a link
        vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
    end
  }
