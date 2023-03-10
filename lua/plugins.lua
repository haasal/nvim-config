return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Package manager
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

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

	use({
		"lukas-reineke/headlines.nvim",
		after = "nvim-treesitter",
		config = function()
			require("headlines").setup()
		end,
	})

	use({
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({
				color_icons = true,
				default = true,
			})
		end,
	})

	-- Color Theme
	use("folke/tokyonight.nvim")
	use("projekt0n/github-nvim-theme")
	use({
		"rose-pine/neovim",
		as = "rose-pine",
	})

	-- Auto-Completion
	use("hrsh7th/nvim-cmp")

	-- LSP completion source:
	use("hrsh7th/cmp-nvim-lsp")

	-- Useful completion sources:
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-buffer")
	use("saadparwaiz1/cmp_luasnip")

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
	use("jiangmiao/auto-pairs")

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
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- Tabs
	use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })

	-- todo highlghting
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({
				keywords = {
					VULN = { icon = "??? ", color = "warning" },
					NOTE = { icon = "??? ", color = "info", alt = { "INFO" } },
					HACK = { icon = "??? ", color = "error" },
				},
				colors = {
					warning = { "#F1D302" },
					error = { "#C1292E" },
					info = { "#2563EB" },
					hint = { "#10B981" },
				},
			})
		end,
	})

	-- markdown preview
	use({
		"ellisonleao/glow.nvim",
		config = function()
			require("glow").setup()
		end,
	})

	use({
		"RRethy/vim-illuminate",
		config = function()
			require("illuminate")
		end,
	})

	-- Dashboard
	use({
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				theme = "hyper",
				config = {
					week_header = {
						enable = true,
					},
					shortcut = {
						{
							icon = "??? ",
							icon_hl = "@variable",
							desc = "Files",
							group = "Label",
							action = "Telescope find_files",
							key = "f",
						},
						{
							icon = "???? ",
							desc = "Sync",
							action = "PackerSync",
							key = "s",
						},
						{
							icon = "??? ",
							group = "Config",
							desc = "Config",
							action = "e ~/.config/nvim",
							key = "c",
						},
					},
				},
			})
		end,
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- Rust support
	use("simrat39/rust-tools.nvim")

	-- snippets
	use({
		"rafamadriz/friendly-snippets",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	})
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	-- docstring generator
	use({
		"kkoomen/vim-doge",
		run = ":call doge#install()",
	})

	-- Emmet
	use("mattn/emmet-vim")

	-- Floating terminal
	use("voldikss/vim-floaterm")

	-- Trouble (Diagnostics)
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	})

	use("wuelnerdotexe/vim-astro")
end)
