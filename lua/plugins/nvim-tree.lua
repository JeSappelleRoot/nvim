vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-tree.lua.git" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

local NvimTree = require("nvim-tree")
NvimTree.setup({
	filters = {
		enable = false,
	},
	view = {
		width = 50,
	},
	update_focused_file = {
		enable = true,
		--update_cwd = true,
	},
})
