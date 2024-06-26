local lsp = require('lsp-zero')
--require('lspconfig').lua_ls.setup({})
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'omnisharp',
    'clangd',
    'cssls',
    'jsonls',
    'sqlls',
    'lua_ls',
    'dockerls',
    'docker_compose_language_service',
    'yamlls'
  },

  automatic_installation = true,
  handlers = {
    lsp.default_setup,
    lua_ls = function()
      local lua_opts = lsp.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})

--lsp.ensure_installed({})

--insert keymaps
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-i>'] = cmp.mapping.confirm({ select = true }),
    --['<C-Space>'] = cmp.mapping.complete(),
})

--lsp keybindings - for more default ones see: https://github.com/VonHeikemen/lsp-zero.nvim/tree/v3.x/doc 
lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function () vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function () vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-s>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
