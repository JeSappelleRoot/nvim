return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { 'nvim-lua/plenary.nvim', 'cljoly/telescope-repo.nvim' },
	config = function()
		require("telescope").setup {
			defaults = {
				file_ignore_patterns = { ".terraform/*", ".terragrunt-cache/*" },
			},
			extensions = {
				repo = {
					list = {
						fd_opts = {
							"--no-ignore-vcs",
						},
						search_dirs = {
							"~/DEV/INFRA",
							"~/DEV/CICD"
						}
					}
				}
			}
		}
	end,
}
