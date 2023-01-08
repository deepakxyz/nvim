-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


  --use 'navarasu/onedark.nvim' -- Theme inspired by Atom
  use({
    'aktersnurra/no-clown-fiesta.nvim',
    as = 'no-clown-fiesta',
    config = function()
        vim.cmd('colorscheme no-clown-fiesta')
    end
 })

--  use 'nvim-lualine/lualine.nvim' -- Fancier statusline
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
  -- Set lualine as statusline
  -- See `:help lualine.txt`
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'onedark',
      component_separators = '|',
      section_separators = '',
    },
  }

  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines

-- COMMENT STRING
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup({
	  opleader = {
	  ---Line-comment keymap
	  line = '<C-.>'
	  ---Block-comment keymap
	}
	})
    end
}

-- TODO 
use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}


  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

  use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-surround') -- SORRUNDS
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
 
  -- NAVIGATION
  use("christoomey/vim-tmux-navigator") -- navigator
  use('szw/vim-maximizer') -- maximizer plugin



  -- TOGGLE TERM
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup({
    size=20,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    close_on_exit = tue, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
    direction="horizontal",
    auto_scroll = true

  })
  end}

  -- RUST
  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'

  -- Debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'
  
  -- SIDE TREE PANE
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- SPLIT WINDOW PLUGIN
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
end)
