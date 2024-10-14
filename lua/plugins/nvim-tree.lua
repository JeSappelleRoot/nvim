return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {
			view = {
				width = 50,
			},
			update_focused_file = {
				enable = true,
				--update_cwd = true,
			},
		}
	end,
}
