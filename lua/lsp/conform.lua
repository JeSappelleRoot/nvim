vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

local Conform = require("conform")
Conform.setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
	},
})
