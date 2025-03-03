return {{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { 'lua', 'c', 'cpp', 'java', 'vim', 'vimdoc', 'html', 'javascript', 'css' },
			sync_installed = true,
			highlight = { enable = true },
			indent = { enable = true }
		})
	end
}}
