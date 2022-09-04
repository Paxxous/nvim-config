return require('packer').startup(function()
  -- [[
  -- You have to add this to packer to prevent it from removing itself...
  -- ]]
  
  use 'wbthomason/packer.nvim' 


  use {"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim", config = function() require("todo-comments").setup() end} -- epic todo comments
  use 'junegunn/fzf' -- File manager
  use 'junegunn/fzf.vim'
  use {'neoclide/coc.nvim', branch = 'release'} -- Auto completion
  use 'nvim-lualine/lualine.nvim' -- Bottom line bar
  use 'ryanoasis/vim-devicons' -- Dev icons
  use 'kyazdani42/nvim-web-devicons'
  use 'neomake/neomake' -- Asynchronous building and running
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} -- A fast parsing library made for Neovim
  use 'tpope/vim-fugitive' -- Git integration
  use 'airblade/vim-gitgutter' -- Git differences
  use 'andweeb/presence.nvim' -- Rich discord presence
  use 'mattn/emmet-vim' -- Very good HTML editing
  use 'tpope/vim-commentary' -- Toggle comments
  use 'dense-analysis/ale' -- Asynchronous linting
  use 'alvan/vim-closetag' -- Close tags, (e.g. HTML, React)
  use 'jiangmiao/auto-pairs' -- Close brackets, (e.g. '', "")
  use 'tpope/vim-surround' -- Surround text with brackets and tags
  use 'justinmk/vim-sneak' -- Move speedily and effectively
  use {'kyazdani42/nvim-tree.lua', tag = 'nightly'} -- Like Nerdtree :DD But lua
  use 'skywind3000/asyncrun.vim' -- Asynchronously run commands so I don't have to open a new console tab
  use "lukas-reineke/indent-blankline.nvim"

  -- [[ 
  -- My personal favorite, themes.
  -- ]]

  use 'morhetz/gruvbox'
  -- use 'gruvbox-community/gruvbox'
  use 'savq/melange'
  use 'tomasr/molokai'
  use 'drewtempelmeyer/palenight.vim'
  use {'catppuccin/nvim', as = 'catppuccin'}
  use 'projekt0n/github-nvim-theme'
  use {'folke/tokyonight.nvim', branch = 'main'}
  use 'rose-pine/neovim'
  use 'marko-cerovac/material.nvim'
  use {'dracula/vim', as = 'dracula'}
  
  -- [[
  -- End themes
  -- ]]

end)
