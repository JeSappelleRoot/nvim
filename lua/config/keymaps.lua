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
--local builtin = require("telescope.builtin")
--vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
--vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
--vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
--vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Set new shortcut to quit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
