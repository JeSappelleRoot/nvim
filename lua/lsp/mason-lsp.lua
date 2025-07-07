return {
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup {
				automatic_enable = false,
				ensure_installed = {
					"terraformls",
					"tflint",
					"ansiblels",
					"dockerls",
					"yamlls",
					"lua_ls",
					"texlab",
					"pylsp",
					"docker_compose_language_service",
				},
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
			require('lspconfig').pylsp.setup({
				capabilities = lsp_capabilities,
			})

			require("lspconfig").yamlls.setup {
				settings = {
					yaml = {
						schemas = {
							kubernetes = "k8s-*.yaml",
							["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
							["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
							["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
						},
					},
				},
			}
		end,
	},

}
