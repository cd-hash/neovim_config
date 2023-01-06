local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

-- vim.api.nvim_command("packadd packer.nvim")
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim' -- Common utilities

  use 'nvim-lualine/lualine.nvim' -- Statusline
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons

  -- Completions
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- LSP
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'princejoogie/tailwind-highlight.nvim'
  use 'L3MON4D3/LuaSnip'

  -- File Management
  use 'nvim-tree/nvim-tree.lua'

  -- Productivity
  use 'jreybert/vimagit'

  -- Syntax Highlighting and Colors
  use 'ap/vim-css-color'

  -- Colorscheme
  use 'folke/tokyonight.nvim'
end)
