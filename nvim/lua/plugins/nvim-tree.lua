return {{
	'nvim-tree/nvim-tree.lua',
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},
	config = function ()
		require('nvim-tree').setup({
			view = {
				side = "right",
				width = 40
			}
		})
	end
}}
