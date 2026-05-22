vim.pack.add({ "https://github.com/m4xshen/hardtime.nvim" })

local Hardtime = require("hardtime")
Hardtime.setup({
	restriction_mode = "hint",
	disabled_keys = {
		["<Up>"] = false,
		["<Down>"] = false,
		["<Left>"] = false,
		["<Right>"] = false,
	},
})
