vim.pack.add({ "https:///github.com/williamboman/mason-lspconfig.nvim" })

local MasonLspConfig = require("mason-lspconfig")

MasonLspConfig.setup({
	automatic_enable = false,
	ensure_installed = {
		"terraformls",
		"tflint",
		"ansiblels",
		"dockerls",
		"helm_ls",
		"yamlls",
		"lua_ls",
		"texlab",
		"pylsp",
		"docker_compose_language_service",
		"jsonls",
		"gopls",
		"golangci_lint_ls",
	},
})
