vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)

-- save file
vim.keymap.set("n", "<leader>s", "<cmd> w <CR>", { silent = true })
-- Copy all
vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>")

-- moves highlighted lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- indents lines inwards & outwards
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- keeps cursor at the start of the line when deleting
vim.keymap.set("n", "J", "mzJ`z")
-- keeps cursor in the middle when half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- search terms stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yanks highlighted code to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Macro for closing buffer
vim.keymap.set("n", "Q", "<cmd>q<CR>")

-- switch between projects
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--[[
vim.keymap.set("n", "<C-s>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-a>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>s", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>a", "<cmd>lprev<CR>zz")
--]]

-- replace letter you were on
vim.keymap.set("n", "<leader>R", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- translates file into something that is executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- opens a new window
vim.keymap.set("n", "<S-t>", "<cmd> vsplit <CR>")

-- navigate between windows
vim.keymap.set("n", "<A-h>", "<C-W><C-h>")
vim.keymap.set("n", "<A-j>", "<C-W><C-j>")
vim.keymap.set("n", "<A-k>", "<C-W><C-k>")
vim.keymap.set("n", "<A-l>", "<C-W><C-l>")

-- opens a terminal
--vim.keymap.set("n", "<S-t>", "<cmd> vsplit <cmd> term <CR>")


--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");

