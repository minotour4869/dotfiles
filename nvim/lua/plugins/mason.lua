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
	'neovim/nvim-lspconfig',
}
