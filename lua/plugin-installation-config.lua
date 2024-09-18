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

vim.cmd([[
	call plug#begin('$HOME/.config/nvim/plugged')

	"Plug 'nvim-lua/plenary.nvim' "For Lua dependecies
	Plug 'p00f/cphelper.nvim' "For Competative Programming
	Plug 'https://github.com/neoclide/coc.nvim',{'branch':'release'}		"Auto completion 

	Plug 'https://github.com/preservim/nerdtree' 		" NerdTree
	Plug 'https://github.com/tpope/vim-commentary' 		" For Commenting gcc & gc
	Plug 'https://github.com/vim-airline/vim-airline' 	" Status bar
	Plug 'https://github.com/ap/vim-css-color'			" CSS Color Preview
	Plug 'https://github.com/ryanoasis/vim-devicons' 	" Developer Icons
	Plug 'https://github.com/jiangmiao/auto-pairs' 		" Auto pairs for '(' '[' '{'

	Plug 'https://github.com/mattn/emmet-vim'			"Emmet for Fast Markup Coding
	Plug 'https://github.com/unblevable/quick-scope'	"QuickScope for fast horizontal scrolling
	 
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }						" For FZF - Fuzzy Find
	Plug 'junegunn/fzf.vim'													"For FZF - Fuzzy Find

	Plug 'https://github.com/honza/vim-snippets'		"For PreLoaded Snippets
	"Plug 'SirVer/ultisnips'								"For React Snippets
	Plug 'mlaursen/vim-react-snippets'                  "For React Snippets

	Plug 'https://github.com/pangloss/vim-javascript'	"For JS highlight
	Plug 'https://github.com/mxw/vim-jsx'				"For JSX highlight

	Plug 'prisma/vim-prisma'							"For Prisma Syntax highlight

	Plug 'https://github.com/shawncplus/phpcomplete.vim' "For php complete 
	Plug 'https://github.com/dsawardekar/wordpress.vim' "For Wordpress 
	Plug 'https://github.com/StanAngeloff/php.vim'		"For php syntaxes 

	"Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'} "For TailwindCSS Coc-Extension

	"Plug 'https://github.com/tjdevries/colorbuddy.nvim', { 'branch': 'dev' }	"For Andromeda Theme
	"Plug 'https://github.com/nobbmaestro/nvim-andromeda'						"For Andromeda Theme

	Plug 'https://github.com/navarasu/onedark.nvim'						"For OneDark Theme
	"Plug 'https://github.com/EdenEast/nightfox.nvim'					"For NightFox Theme
	"Plug 'https://github.com/catppuccin/nvim', { 'as': 'catppuccin' }	"For Catppuccin Theme

	call plug#end()
]])
