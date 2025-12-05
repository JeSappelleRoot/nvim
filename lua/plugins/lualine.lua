return {
	--"sontungexpt/witch-line",
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {},
	config = function()
		require("lualine").setup({
			options = {
				globalstatus = true, -- lualine is a single line at bottom for each buffer
			},
			sections = {
				lualine_x = { "encoding", "fileformat", "filetype", "lsp_status" },
			},
		})
	end,
}
