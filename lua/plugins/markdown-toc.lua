return {
	"hedyhli/markdown-toc.nvim",
	ft = "markdown",
	config = function()
		require("mtoc").setup() -- use default config
	end,
}
