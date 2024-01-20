-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local nvimtree = require("nvim-tree")
nvimtree.setup()

-- toggle
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle <CR>")

-- focus
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus <CR>")

