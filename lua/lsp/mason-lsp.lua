return {
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
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
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("*", {
				capabilities = lsp_capabilities,
			})

			-- TerraformLS configuration
			vim.lsp.config["terraformls"] = {
				init_options = {
					experimentalFeatures = {
						prefillRequiredFields = true,
					},
				},
			}
			vim.lsp.enable("terraformls", {})

			-- TFLint configuration
			vim.lsp.enable("tflint")

			-- LuaLS configuration
			vim.lsp.config["lua_ls"] = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			}
			vim.lsp.enable("lua_ls")

			vim.lsp.enable("hcl")
			vim.lsp.enable("dockerls")
			vim.lsp.enable("texlab")
			vim.lsp.enable("docker_compose_language_service")
			vim.lsp.enable("ansiblels")
			vim.lsp.enable("pylsp")

			vim.lsp.config["yamlls"] = {
				settings = {
					yaml = {
						schemas = {
							kubernetes = "*.yaml",
							["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
							["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
							["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
						},
					},
				},
			}
			vim.lsp.enable("yamlls")
		end,
	},
}
