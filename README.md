## General
This is my personal [Neovim](https://github.com/neovim/neovim) configurartion, which includes different extensions/projects and different keymaps to tailor Neovim to my liking.

## Requirements
  - A C compiler
    - For Windows, I used Zig
    - For Linux, there is a greater variety, so use whatever
  - A [Nerd Font](https://www.nerdfonts.com)
    - I personally used Inconsolata LGC Nerd Font
    - Don't forget to set change the font in your termeinal to that from Nerd Font

## Colourscheme: 
  [Tokyo Night](https://github.com/folke/tokyonight.nvim)

## Extensions:
  - [Packer](https://github.com/wbthomason/packer.nvim)
    - Package manager for Neovim
  - [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
    - Highlighting of text
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim)
    - Fuzzy finder (finding words in projects or project files)
  - [Harpoon2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
    - Quickswitch between files
  - [Undotree](https://github.com/mbbill/undotree)
    - Undo history
  - [Vim Fugitive](https://github.com/tpope/vim-fugitive)
    - Git functionality directly from the Vim terminal
  - [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
    - Language server protocols - allows for language specific code completion, syntax highlighting, warnings etc.
    - I have more or less copied the configuration/template from [The Primeagen](https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/configuration-templates.md#primes-config)
  - [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
    - Required to use lsp-zero
  - [Mason](https://github.com/williamboman/mason.nvim)
    - Allows for additional LSP's, DAP's, linters & formatters to be installed 
  - [Nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
    - File explorer
  - [Web-dev-icons](https://github.com/nvim-tree/nvim-web-devicons)
    - Icons for nvim-tree
  - [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
  - [Auto-pairs](https://github.com/windwp/nvim-autopairs)
    - Auto-pairs braces, brackets, parenthesis, etc.
  - [Which-key](https://github.com/folke/which-key.nvim)
    - Helpful extension for completing keybindings
  - [Lualine](https://github.com/nvim-lualine/lualine.nvim)
    - Highlighting of cmd
  - [Comment](https://github.com/numToStr/Comment.nvim)
    - Shortcut for pasting in comments

## Debugger
The plugin used to support debugging is [DAP](https://github.com/mfussenegger/nvim-dap) with the following extensions and supported languages: 
(Note that one must manually add languages to support, see [DAP-Wiki](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation)) 
  - [DAP-UI](https://github.com/rcarriga/nvim-dap-ui)
  - [DAP-Virtual-Text](https://github.com/theHamsta/nvim-dap-virtual-text)

Supported languages:
  - .NETCore
  - Unity
  - C
  - C++
  - Rust

