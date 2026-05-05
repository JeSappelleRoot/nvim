vim.pack.add({ "https://github.com/sschleemilch/slimline.nvim" })

local Slimline = require("slimline")
Slimline.setup({
	style = "bg",
	bold = true,
	configs = {
		mode = {
			verbose = true,
		},
		git = {
			hl = {
				primary = "Function",
			},
		},
	},
})
