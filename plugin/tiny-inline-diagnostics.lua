vim.pack.add({ "https://github.com/rachartier/tiny-inline-diagnostic.nvim" })

local Tinyinline = require("tiny-inline-diagnostic")
Tinyinline.setup({
	preset = "modern",
	options = {
		set_arrow_to_diag_color = true,
		show_source = {
			enabled = true, -- Enable showing source names
			if_many = false, -- Only show source if multiple sources exist for the same diagnostic
		},
		multilines = {
			enabled = true,
			always_show = true,
		},
		break_line = {
			enabled = true, -- Enable automatic line breaking
			after = 30, -- Number of characters before inserting a line break
		},
	},
})
