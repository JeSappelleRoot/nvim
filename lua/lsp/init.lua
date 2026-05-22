vim.o.autocomplete = false -- Disable Nvim 0.12 native autocomplete
vim.lsp.log.set_level("off")

require("lsp.mason")
require("lsp.mason-lsp")
require("lsp.nvim-lspconfig")
require("lsp.nvim-cmp")
require("lsp.conform")
