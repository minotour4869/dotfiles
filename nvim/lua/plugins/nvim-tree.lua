return {{
	'nvim-neo-tree/neo-tree.nvim',
	dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
	config = function()
		require("neo-tree").setup({
			close_if_last_window = false,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			window = {
				position = "right",
				mappings = {
					["s"] = "open_vsplit",
					["S"] = "open_split",
					["t"] = "open_tabnew",
				}
			},
			source_selector = {
				winbar = true
			},
		})
	end,
}}
