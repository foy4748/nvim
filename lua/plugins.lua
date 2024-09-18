--[[
-- Initialize the plugin manager
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- Lua dependencies
  use 'nvim-lua/plenary.nvim'

  -- Competitive Programming
  use 'p00f/cphelper.nvim'

  -- Auto completion
  use {'neoclide/coc.nvim', branch = 'release'}

  -- File explorer
  use 'preservim/nerdtree'

  -- Commenting
  use 'tpope/vim-commentary'

  -- Status bar
  use 'vim-airline/vim-airline'

  -- CSS Color Preview
  use 'ap/vim-css-color'

  -- Developer Icons
  use 'ryanoasis/vim-devicons'

  -- Auto pairs
  use 'jiangmiao/auto-pairs'

  -- Emmet for fast markup coding
  use 'mattn/emmet-vim'

  -- QuickScope for fast horizontal scrolling
  use 'unblevable/quick-scope'

  -- Fuzzy Finder
  use {'junegunn/fzf', run = function() vim.fn'fzf#install' end}
  use 'junegunn/fzf.vim'

  -- Preloaded snippets
  use 'honza/vim-snippets'
  use 'mlaursen/vim-react-snippets' -- React snippets

  -- JavaScript and JSX highlighting
  use 'pangloss/vim-javascript'
  use 'mxw/vim-jsx'

  -- Prisma syntax highlighting
  use 'prisma/vim-prisma'

  -- PHP support
  use 'shawncplus/phpcomplete.vim'
  use 'dsawardekar/wordpress.vim'
  use 'StanAngeloff/php.vim'

  -- Themes
  use 'navarasu/onedark.nvim'
  -- use 'EdenEast/nightfox.nvim'
  -- use {'catppuccin/nvim', as = 'catppuccin'}
end)
--]]

