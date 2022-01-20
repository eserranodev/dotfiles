vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'arcticicestudio/nord-vim'

  -- Terminal
  use 'voldikss/vim-floaterm'
  use 'embark-theme/vim'

  -- Coding
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {'neoclide/coc.nvim', branch = 'release'}
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
  use 'fannheyward/telescope-coc.nvim'
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'vim-test/vim-test'
  use 'elixir-editors/vim-elixir'
  use 'luochen1990/rainbow'
  use {
    'nvim-lualine/lualine.nvim', requires = {
      'kyazdani42/nvim-web-devicons', opt = true
    }
  }
  use 'tpope/vim-projectionist'

  -- Git
  use 'tpope/vim-fugitive'
  use 'APZelos/blamer.nvim'

  -- Files
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  -- Utils
  use 'folke/which-key.nvim'

  -- Buffers
  use {'rmagatti/auto-session'}
end)
