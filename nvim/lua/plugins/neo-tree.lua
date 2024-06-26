return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        },
    config = function()
        vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle left<CR>')
        vim.keymap.set('n', '<C-g>', ':Neotree git_status toggle right<CR>')
    end
}
