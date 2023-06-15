vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Themes
  use { 'embark-theme/vim', as = 'embark' }

  -- Terminal
  use 'voldikss/vim-floaterm'

  -- Coding
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {'neoclide/coc.nvim', branch = 'release'}
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
  use 'fannheyward/telescope-coc.nvim'
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'vim-test/vim-test'
  use 'elixir-editors/vim-elixir'
  use 'nvim-lualine/lualine.nvim'
  use 'tpope/vim-projectionist'
  use 'danilamihailov/beacon.nvim'
  use 'terrortylor/nvim-comment'
  use 'honza/vim-snippets'
  -- install without yarn or npm
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
  use {'phaazon/hop.nvim', branch = 'v2'}
  use 'fatih/vim-go'

  -- Git
  use 'tpope/vim-fugitive'
  use 'APZelos/blamer.nvim'
  use 'airblade/vim-gitgutter'

  -- Files
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'

  -- Utils
  use 'folke/which-key.nvim'

  -- Buffers
  use 'rmagatti/auto-session'
  use {'akinsho/bufferline.nvim', tag = "*"}
end)
