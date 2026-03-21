return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ruff", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local servers = {
                'pyright',
                'lua_ls',
                'ruff',
            }
            local on_attach = function(client, bufnr)
                if client.name == 'ruff' then
                    -- Disable hover in favor of Pyright
                    client.server_capabilities.hoverProvider = false
                end
            end
            vim.lsp.config('*', {
                capabilities = capabilities,
            })
            vim.lsp.enable(servers)

            vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
	},
}
