vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })

local Gitsign = require("gitsigns")
Gitsign.setup({
	current_line_blame = true,
	current_line_blame_opts = {
		delay = 250,
	},
})
