return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Syntax highlghting
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
				},
			})
		end,
	})

    use 'nvim-tree/nvim-web-devicons'

	-- Github Color Theme
	use("projekt0n/github-nvim-theme")

	-- Auto-Completion
	use({ "ms-jpq/coq_nvim", branch = "coq" })
	use({ "ms-jpq/coq.artifacts", branch = "artifacts" })

	-- Status line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- LSP
	use("neovim/nvim-lspconfig")

	-- Fuzzy Search
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	-- formatting
	use("sbdchd/neoformat")

	-- autoclose brackets etc.
	use("Raimondi/delimitMate")

	-- Terminal autocompletion
	use({
		"gelguy/wilder.nvim",
		config = function()
			-- config goes here
		end,
	})

	-- Key hints
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	-- Hopping
	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})
	
	-- Commenting
	use 'tpope/vim-commentary'
    
    -- Tabs
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
end)
