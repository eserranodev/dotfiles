vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'arcticicestudio/nord-vim'
  use 'embark-theme/vim'
  use 'EdenEast/nightfox.nvim'

  -- Terminal
  use 'voldikss/vim-floaterm'

  -- Coding
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {'neoclide/coc.nvim', commit = '4782e76'}
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
  use 'fannheyward/telescope-coc.nvim'
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'vim-test/vim-test'
  use 'elixir-editors/vim-elixir'
  use {
    'nvim-lualine/lualine.nvim', requires = {
      'kyazdani42/nvim-web-devicons', opt = true
    }
  }
  use 'tpope/vim-projectionist'
  use 'danilamihailov/beacon.nvim'
  use 'terrortylor/nvim-comment'
  use 'honza/vim-snippets'
  -- install without yarn or npm
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- Git
  use 'tpope/vim-fugitive'
  use 'APZelos/blamer.nvim'
  use 'airblade/vim-gitgutter'

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
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
end)
