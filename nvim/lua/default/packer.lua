-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
	require("nvim-surround").setup({
	    -- Configuration here, or leave empty to use defaults
	})
    end
})
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('mhinz/vim-grepper')

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('vim-airline/vim-airline')

  use ('Mofiqul/vscode.nvim')
  use{
	  'ggandor/leap.nvim',
	  dependencies = { "tpope/vim-repeat" },
  }

  use{
	  "folke/trouble.nvim",
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  opts = {
		  -- your configuration comes here
		  -- or leave it empty to use the default settings
		  -- refer to the configuration section below
	  },
  }

  use {
	  "windwp/nvim-autopairs",
	  config = function() require("nvim-autopairs").setup {} end
  }

  use{
	  -- LSP Configuration & Plugins
	  'neovim/nvim-lspconfig',
	  -- Automatically install LSPs to stdpath for neovim
	   'williamboman/mason.nvim', config = true,
	  'williamboman/mason-lspconfig.nvim',

	  -- Useful status updates for LSP
	  -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
	   'j-hui/fidget.nvim', opts = {} ,

	  -- Additional lua configuration, makes nvim stuff amazing!
	  'folke/neodev.nvim'
  }

  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })

  use {
	  -- Autocompletion
	  'hrsh7th/nvim-cmp',

	  'L3MON4D3/LuaSnip',
	  'saadparwaiz1/cmp_luasnip',

	  -- Adds LSP completion capabilities
	  'hrsh7th/cmp-nvim-lsp',
	  'hrsh7th/cmp-path',

	  -- Adds a number of user-friendly snippets
	  'rafamadriz/friendly-snippets',
  }
end)
