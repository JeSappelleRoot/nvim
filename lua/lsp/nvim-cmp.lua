local M = {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"onsails/lspkind.nvim",
	},
}

M.config = function()
	local cmp = require("cmp")
	local lspkind = require("lspkind")
	require("luasnip.loaders.from_vscode").lazy_load()
	vim.opt.completeopt = { "menu", "menuone", "noselect" }

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For `luasnip`
			end,
		},
		window = {
			completion = {
				cmp.config.window.bordered(),
				winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
			},
			documentation = {
				cmp.config.window.bordered(),
				max_height = 30,
				max_width = 65,
			},
		},
		formatting = {
			format = lspkind.cmp_format({
				ellipsis_char = "...",
				mode = "symbol_text",
				menu = {
					buffer = "[Buffer]",
					nvim_lsp = "[LSP]",
					luasnip = "[LuaSnip]",
					nvim_lua = "[Lua]",
					latex_symbols = "[Latex]",
				},
			}),
		},
		mapping = cmp.mapping.preset.insert({
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			["<Tab>"] = cmp.mapping.select_next_item(),
		}),
		sources = cmp.config.sources({
			{ name = "path" },
			{ name = "nvim_lsp", keyword_length = 1 },
			{ name = "buffer", keyword_length = 3 },
			{ name = "luasnip", keyword_length = 2 },
		}),
	})
end

return M
