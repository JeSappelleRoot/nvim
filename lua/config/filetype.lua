-- Force some filetype based on extensions
vim.filetype.add({
	extension = {
		tf = "terraform",
	},
	pattern = {
		[".*/templates/.*%yaml"] = "helm",
		[".*/templates/.*%tpl"] = "helm",
		["Chart.yml"] = "helm",
		["Chart.yaml"] = "helm",
	},
})
