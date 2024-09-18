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
