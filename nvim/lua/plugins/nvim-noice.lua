return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
		{
			"rcarriga/nvim-notify",
			config = function()
				local notify = require('notify')

				notify.setup({
					background_colour = "#000000",
					top_down = false,
					render = "compact",
					stages = "fade"
				})
			end
		}
	}
}
