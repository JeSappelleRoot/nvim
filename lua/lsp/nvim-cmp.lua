vim.pack.add({
	"https://github.com/hrsh7th/nvim-cmp",
	-- Dependencies
	"https://github.com/hrsh7th/cmp-nvim-lsp",
	"https://github.com/hrsh7th/cmp-nvim-lua",
	"https://github.com/hrsh7th/cmp-buffer",
	"https://github.com/hrsh7th/cmp-path",
	"https://github.com/hrsh7th/cmp-cmdline",
	"https://github.com/saadparwaiz1/cmp_luasnip",
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/rafamadriz/friendly-snippets",
	"https://github.com/onsails/lspkind.nvim",
})

local Cmp = require("cmp")
local Lspkind = require("lspkind")
require("luasnip.loaders.from_vscode").lazy_load()
vim.opt.completeopt = { "menu", "menuone", "noselect" }

Cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body) -- For `luasnip`
		end,
	},

	formatting = {
		format = Lspkind.cmp_format({
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
	mapping = Cmp.mapping.preset.insert({
		["<C-Space>"] = Cmp.mapping.complete(),
		["<C-e>"] = Cmp.mapping.abort(),
		["<CR>"] = Cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		["<Tab>"] = Cmp.mapping.select_next_item(),
	}),
	sources = Cmp.config.sources({
		{ name = "path" },
		{ name = "nvim_lsp", keyword_length = 1 },
		{ name = "buffer", keyword_length = 3 },
		{ name = "luasnip", keyword_length = 2 },
	}),
})
