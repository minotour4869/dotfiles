return {
	{
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup({
				ui = {
					icon = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}	
				}
			})
		end,
	},
	{
		'williamboman/mason-lspconfig.nvim',
		opts = {
			ensure_installed = {
				'clangd',
				'lua_ls',
				'tsserver'
			},
			automatic_installation = true,
		},
		event = 'BufReadPre',
		dependencies = 'williamboman/mason.nvim'
	},
	{
		'neovim/nvim-lspconfig',
		lazy = false,
		dependencies = {
			'williamboman/mason.nvim',
			'hrsh7th/cmp-nvim-lsp'
		},
		config = function()
			local lsp = require('lspconfig')
			local languages = {'lua_ls', 'clangd', 'tsserver'}
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			for _, lang in pairs(languages) do
				lsp[lang].setup{
					capabilities = capabilities,	
				}
			end
		end
	}
}
