return {
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'onsails/lspkind.nvim',
			'hrsh7th/cmp-vsnip'
		},
		config = function()
			local cmp = require('cmp')

			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered()
				},
				mapping = cmp.mapping.preset.insert({
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
				    ['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim-lsp' },
					{ name = 'vsnip' },
					{ name = 'buffer' },
					{ name = 'path' }
				}),
				formatting = {
					format = require('lspkind').cmp_format({
						mode = 'symbol',
						maxwidth = 50,
						ellipsis_char = '...',
					})
				}
			})
		end,
	}
}
