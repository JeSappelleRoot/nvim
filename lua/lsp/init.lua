vim.o.autocomplete = true
vim.lsp.set_log_level("off") -- Disable LSP log

require("lsp.mason")
require("lsp.mason-lsp")
require("lsp.nvim-lspconfig")
require("lsp.nvim-cmp")
require("lsp.conform")
