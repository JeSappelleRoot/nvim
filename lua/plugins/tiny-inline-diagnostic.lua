return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy",
	priority = 1000,
	config = function()
		require("tiny-inline-diagnostic").setup({
			preset = "modern",
			options = {
				set_arrow_to_diag_color = true,
				show_source = {
					enabled = true, -- Enable showing source names
					if_many = false, -- Only show source if multiple sources exist for the same diagnostic
				},
				multilines = {
					enabled = true,
					--always_show = true,
				},
				break_line = {
					enabled = false, -- Enable automatic line breaking
					after = 15, -- Number of characters before inserting a line break
				},
			},
		})
		vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
	end,
}
