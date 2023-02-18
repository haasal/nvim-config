local builtin = require("telescope.builtin")
local wk = require("which-key")

wk.register({
	["<leader>"] = {
		name = "telescope",
		ff = { builtin.find_files, "Find files" },
		fg = { builtin.live_grep, "Grep in files" },
		fb = { builtin.buffers, "Grep in buffers" },
		fh = { builtin.help_tags, "Help tags" },
		ft = { "<cmd>TodoTelescope<cr>", "Find in TODOs" },
	},
})
