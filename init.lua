-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

vim.opt.number = true

vim.cmd([[autocmd BufEnter * silent! cd %:h]]) -- Enable auto change directory when opening a buffer

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ import = "plugins" },
		{ import = "lsp" },

		-- add your plugins here
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	-- automatically check for plugin updates
	checker = { enabled = true },
})


vim.cmd.colorscheme("kanagawa")

vim.opt.mouse = "" -- Disable mouse
vim.opt.swapfile = false
vim.opt.ttyfast = true
vim.lsp.set_log_level("off") -- Disable LSP log

vim.opt.scrolloff = 10       -- Add 10 extra lines before scrolling up and down


-- Force some NVim diagnostic settings
vim.diagnostic.config({
	virtual_text = true, -- Force virtual text to get linter warning
})

vim.g.vimtex_syntax_conceal_disable = true -- Fix slow scrolling with vimtex plugin

vim.cmd([[autocmd BufRead,BufNewFile *.hcl, set filetype=terraform]])
vim.cmd([[autocmd BufRead,BufNewFile */ansible/*.yml, set filetype=yaml.ansible]])

local defaults = { noremap = true, silent = true }
-- Base64 Decoder shortcuts
vim.keymap.set("v", "<leader>atob", ":B64Decode<cr>", defaults)
vim.keymap.set("v", "<leader>btoa", ":B64Encode<cr>", defaults)

-- BufferLine shortcuts
vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer1<CR>", defaults)
vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer2<CR>", defaults)
vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer3<CR>", defaults)
vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer4<CR>", defaults)
vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer5<CR>", defaults)
vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer6<CR>", defaults)
vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer7<CR>", defaults)
vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer8<CR>", defaults)
vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer9<CR>", defaults)

-- Telescope shortcuts
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
