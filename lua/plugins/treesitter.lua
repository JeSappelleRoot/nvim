return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
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
			},
			highlight = {
				enable = true,
			},
		})
	end,
}
