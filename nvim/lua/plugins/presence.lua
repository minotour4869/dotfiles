return {
	{
		'andweeb/presence.nvim',
		config = function ()
			require('presence').setup({
				enable_line_number = true,
				neovim_image_text = 'Neovim',
				line_number_text    = "%s/%s line(s)",
			})
		end
	}
}
