local packer = require("plugins")

-- Mappings
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

vim.g.mapleader = ","

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
map("n", "<A-a>", "<Cmd>BufferCloseAllButCurrent<CR>", opts)

local wk = require("which-key")
wk.register({
	["<leader>fmt"] = { "<cmd>Neoformat<cr>", "Format document" },
})
wk.register({
	["<leader>t"] = {
		name = "tree",
		t = { "<cmd>NvimTreeToggle<cr>", "Toggle file tree" },
		f = { "<cmd>NvimTreeFindFile<cr>", "Find file" },
	},
})

-- vim options
local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.clipboard = "unnamedplus"
opt.breakindent = true --Enable break indent
opt.undofile = true --Save undo history
opt.ignorecase = true
opt.termguicolors = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

require("github-theme").setup({
	theme_style = "light",
})

-- LSP Servers
require("lspconfig").pyright.setup({})
require("lspconfig").rust_analyzer.setup({})

require("lualine").setup()

-- Tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()

-- Terminal autocmpletion
local wilder = require("wilder")
wilder.setup({ modes = { ":", "/", "?" } })
wilder.set_option(
	"renderer",
	wilder.popupmenu_renderer({
		highlighter = wilder.basic_highlighter(),
		pumblend = 10,
		highlights = {
			border = "rounded", -- highlight to use for the border
		},
		border = "rounded",
	})
)

-- Hopper
local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "f", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "F", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "t", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set("", "T", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })

require("nvim-web-devicons").setup({
	color_icons = true,
	default = true,
})
