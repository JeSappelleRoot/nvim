return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"stylua",
				"hclfmt",
				"yamlfmt",
				"ansible-lint",
				"kube-linter"
			}
		})
	end,

}
