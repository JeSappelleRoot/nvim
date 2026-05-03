vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

local Lualine = require("lualine")
Lualine.setup({
	options = {
		globalstatus = true, -- lualine is a single line at bottom for each buffer
	},
	sections = {
		lualine_x = { "encoding", "fileformat", "filetype", "lsp_status" },
	},
})
