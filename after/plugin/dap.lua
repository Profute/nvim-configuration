require('dapui').setup()
require('nvim-dap-virtual-text').setup()

-- UI
vim.fn.sign_define('DapBreakPoint', {text = '♦', texthl='DapBreakPoint', linehl='DapBreakPoint', numhl='DapBreakpoint'})

-- Keymaps
vim.api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", {noremap = true})
