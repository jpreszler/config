
return {
    "nvim-treesitter/nvim-treesitter",
    lazy=false,
    branch="main",
    build = ":TSUpdate",
    init = function()
        vim.api.nvim_create_autocmd('FileType', {
            callback = function()
                pcall(vim.treesitter.start)
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
        local ensure_installed = {
            "lua", "python", "markdown", "go", "markdown_inline"
        }
        require('nvim-treesitter').install(ensure_installed)
    end,
}
