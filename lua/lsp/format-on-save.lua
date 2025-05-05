return {
	"elentok/format-on-save.nvim",
	config = function()
		local formatters = require("format-on-save.formatters")
		require("format-on-save").setup({
			formatter_by_ft = {
				lua = formatters.lsp,
				terraform = formatters.lsp,
				yaml = formatters.lsp,
				hcl = formatters.lsp,
			},
		})
	end,
}
