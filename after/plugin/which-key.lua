local wk = require("which-key")
wk.setup()

-- Show all keymaps
vim.keymap.set("n", "<leader>wK", ":WhichKey<CR>")

