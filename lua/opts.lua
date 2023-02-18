local opt = vim.opt

vim.g.mapleader = ","

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
opt.completeopt = { "menuone", "noselect", "noinsert" }
opt.shortmess = opt.shortmess + { c = true }
vim.api.nvim_set_option("updatetime", 300)

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
opt.autoindent = true
opt.background = "light"
opt.textwidth = 80
