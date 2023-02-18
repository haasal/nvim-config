local wk = require("which-key")
wk.register({
	["<leader>t"] = {
		name = "tree",
		t = { "<cmd>NvimTreeToggle<cr>", "Toggle file tree" },
		f = { "<cmd>NvimTreeFindFile<cr>", "Find file" },
	},
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()
