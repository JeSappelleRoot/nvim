return {
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup {
				automatic_enable = false,
			}
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
			require('lspconfig').terraformls.setup({
				capabilities = lsp_capabilities,
				init_options = {
					experimentalFeatures = {
						prefillRequiredFields = true,
					},
				},
			})
			require('lspconfig').tflint.setup({ capabilities = lsp_capabilities, })
			require('lspconfig').hcl.setup({ capabilities = lsp_capabilities, })
			require('lspconfig').lua_ls.setup({ capabilities = lsp_capabilities, })
			require('lspconfig').dockerls.setup({ capabilities = lsp_capabilities, })
			require('lspconfig').texlab.setup({ capabilities = lsp_capabilities, })
			require('lspconfig').docker_compose_language_service.setup({ capabilities = lsp_capabilities, })
			require('lspconfig').ansiblels.setup({
				capabilities = lsp_capabilities,
				filetypes = { "yaml.ansible" },
			})
			--require('lspconfig').ruff.setup({ capabilities = lsp_capabilities, })
			require('lspconfig').pylsp.setup({
				capabilities = lsp_capabilities,
			})
			--require('lspconfig').yamlls.setup({
			--	capabilities = lsp_capabilities,
			--	schemaStore = {
			--		enable = true,
			--		url = "https://www.schemastore.org/json",
			--	},
			--	settings = {
			--		yaml = {
			--			format = { enable = false },
			--		},
			--		json = {
			--			schemas = {
			--				kubernetes = "globPattern",
			--				["http://json.schemastore.org/github-workflow"] =
			--				".github/workflows/*",
			--				["http://json.schemastore.org/github-action"] =
			--				".github/action.{yml,yaml}",
			--				["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] =
			--				"*docker-compose*.{yml,yaml}",

			--			}
			--		}
			--	}
			--})
		end,
	},

}
