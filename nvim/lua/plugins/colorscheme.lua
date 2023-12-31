return {
	'marko-cerovac/material.nvim',
	config = function()
		require('material').setup({
			disable = {
				background = true,
			},
			lualine_style = "stealth",
			custom_highlights = {
				LineNr = { fg = '#252525' },	
				CursorLineNr = { fg = '#ffffff' }
			}
		})

		vim.cmd 'colorscheme material'
	end
}
