local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
map("n", "<A-a>", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
