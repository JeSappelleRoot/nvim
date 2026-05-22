vim.pack.add({ "https://github.com/romus204/tree-sitter-manager.nvim" })

local Treesittermanager = require("tree-sitter-manager")
Treesittermanager.setup({
	auto_install = true,
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
})
