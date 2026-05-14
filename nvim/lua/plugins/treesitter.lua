
return {
    "nvim-treesitter/nvim-treesitter",
    lazy=false,
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter")
        config.setup({
            ensure_installed = {"lua", "python", "markdown", "markdown_inline", "go"},
            highlight = { enable = true},
            indent = { enable = true},
        })
    end
}
