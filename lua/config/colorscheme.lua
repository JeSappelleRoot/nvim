vim.pack.add({
	"https://github.com/marko-cerovac/material.nvim",
	"https://github.com/nvimdev/zephyr-nvim",
	"https://github.com/uloco/bluloco.nvim",
	"https://github.com/rebelot/kanagawa.nvim",
	"https://github.com/catppuccin/nvim",
	"https://github.com/EdenEast/nightfox.nvim",
	"https://github.com/olimorris/onedarkpro.nvim",
	"https://github.com/folke/tokyonight.nvim.git",
	-- Dependencies
	"https://github.com/rktjmp/lush.nvim",
})

local Theme = require("tokyonight")
Theme.setup({
	on_colors = function(colors)
		colors.fg_gutter = "#b2b8cf"
	end,
})

vim.cmd.colorscheme("tokyonight-moon")
