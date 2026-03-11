return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = "TSUpdate",
	config = function()
		require("nvim-treesitter").setup({})
		require("nvim-treesitter").install({
			"yaml",
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"terraform",
			"hcl",
			"dockerfile",
			"go",
			"helm",
		})
	end,
}
