return {
	-- the colorscheme should be available when starting Neovim
	{
		"folke/tokyonight.nvim",
		lazy = true, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
	},
	{
		"marko-cerovac/material.nvim",
		lazy = true,
		priority = 1000,
	},
	{
		"nvimdev/zephyr-nvim",
		lazy = true,
		priority = 1000,
	},

	{
		"uloco/bluloco.nvim",
		dependencies = { 'rktjmp/lush.nvim' },
		lazy = true,
		priority = 1000,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
	},
}
