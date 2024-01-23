-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Package Manager
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Colourscheme
    use({
        "folke/tokyonight.nvim",
        as = 'tokyonight',
        config = function()
            vim.cmd [[colorscheme tokyonight-night]]
        end
    })

    -- Treesitter based Highlighting
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    -- Harpoon2 - Quickswitch between files
    use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    -- History of Undos (<leader><F5>)
    use "mbbill/undotree"

    -- Git functionality
    use "tpope/vim-fugitive"
    use 'lewis6991/gitsigns.nvim'

    -- lsp-zero and its configuration
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'saadparwaiz1/cmp_luasnip' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    
    -- FileTree
    use 'nvim-tree/nvim-tree.lua'
    -- Icons
    use 'nvim-tree/nvim-web-devicons'

    -- Pairs brackets, braces, etc. automatically
    use {
        "windwp/nvim-autopairs",
        require("nvim-autopairs").setup {} 
    }   

    -- Show Keybindings
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {}
        end
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
   }

   -- Debugger
   use {
       'mfussenegger/nvim-dap',

       requires = {
           { 'Samsung/netcoredbg' },
           { 'Unity-Technologies/vscode-unity-debug' },
           { 'Microsoft/vscode-cpptools' },
       },
   }

   -- Debugger UI
   use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
   use "theHamsta/nvim-dap-virtual-text"

end)

