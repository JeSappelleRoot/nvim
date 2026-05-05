vim.pack.add({
	"https://github.com/akinsho/bufferline.nvim",
	-- Dependency
	"https://github.com/nvim-tree/nvim-web-devicons",
})

local BufferLine = require("bufferline")
BufferLine.setup({
	options = {
		numbers = "both",
	},
})
