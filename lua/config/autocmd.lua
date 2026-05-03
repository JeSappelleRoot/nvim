-- Auto set indent on JSON file
vim.cmd([[autocmd FileType json setlocal tabstop=2]])
vim.cmd([[autocmd FileType helm setlocal tabstop=2 shiftwidth=2 expandtab]])

-- Treesitter Fix
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go", "helm" },
	callback = function()
		vim.treesitter.start()
	end,
})

-- Ansible fix to set filetype
vim.cmd([[autocmd BufRead,BufNewFile */ansible/*.yml, set filetype=yaml.ansible]])
