require("plugins")
require("config")
require("opts")
require("themes")

-- Load vim files
vim.cmd("source" .. vim.fn.stdpath("config") .. "/mappings.vim")
