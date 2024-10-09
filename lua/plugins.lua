-- Lazy specific
return {
	-- Lua dependencies
	{ "nvim-lua/plenary.nvim" },
	-- Lua Rocks
	{
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},

	-- Competitive Programming
	{ "p00f/cphelper.nvim" },

	-- Auto completion
	{ "neoclide/coc.nvim",         branch = "release" },

	-- File explorer
	{ "preservim/nerdtree" },

	-- Commenting
	{ "tpope/vim-commentary" },

	-- Status bar
	{ "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true } },

	-- CSS Color Preview
	{ "ap/vim-css-color" },

	-- Developer Icons
	{ "ryanoasis/vim-devicons" },

	-- Auto pairs
	{ "jiangmiao/auto-pairs" },

	-- Emmet for fast markup coding
	{ "mattn/emmet-vim" },

	-- QuickScope for fast horizontal scrolling
	{ "unblevable/quick-scope" },

	-- Fuzzy Finder
	-- { "junegunn/fzf",                   run = function() vim.fn "fzf#install" end },
	-- { "junegunn/fzf.vim" },

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- Preloaded snippets
	{ "honza/vim-snippets" },
	{ "mlaursen/vim-react-snippets" },

	-- Highlighting
	{ "nvim-treesitter/nvim-treesitter" },

	-- -- Highlighting copy
	{ "machakann/vim-highlightedyank" },

	-- JavaScript and JSX highlighting
	{ "pangloss/vim-javascript" },
	{ "mxw/vim-jsx" },

	-- Prisma syntax highlighting
	{ "prisma/vim-prisma" },

	-- Mini Plugins
	{ 'echasnovski/mini.nvim',          version = '*' },
	{ 'echasnovski/mini.animate',       version = '*' },

	-- PHP support
	{ "shawncplus/phpcomplete.vim" },
	{ "dsawardekar/wordpress.vim" },
	{ "StanAngeloff/php.vim" },

	-- Themes
	{ "folke/tokyonight.nvim" },
	{ "navarasu/onedark.nvim" },
	{ "scottmckendry/cyberdream.nvim" },
	{ 'projekt0n/github-nvim-theme',    name = 'github-theme' },
}
-- Packer specific
--[[
-- Initialize the plugin manager
-- vim.cmd --packadd packer.nvim--

require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- Packer can manage itself

	-- Lua dependencies
	use 'nvim-lua/plenary.nvim'

	-- Competitive Programming
	use 'p00f/cphelper.nvim'

	-- Auto completion
	use { 'neoclide/coc.nvim', branch = 'release' }

	-- File explorer
	use 'preservim/nerdtree'

	-- Commenting
	use 'tpope/vim-commentary'

	-- Status bar
	-- use 'vim-airline/vim-airline'
	use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }

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
	use { 'junegunn/fzf', run = function() vim.fn 'fzf#install' end }
	use 'junegunn/fzf.vim'

	use { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}


	-- Preloaded snippets
	use 'honza/vim-snippets'
	use 'mlaursen/vim-react-snippets' -- React snippets

	-- Highlighting --------------------

	-- Nvim Treesitter
	-- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { 'nvim-treesitter/nvim-treesitter' }

	-- JavaScript and JSX highlighting
	use 'pangloss/vim-javascript'
	use 'mxw/vim-jsx'

	-- Prisma syntax highlighting
	use 'prisma/vim-prisma'

	-- ----------------------------------

	-- PHP support
	use 'shawncplus/phpcomplete.vim'
	use 'dsawardekar/wordpress.vim'
	use 'StanAngeloff/php.vim'

	-- Themes
	use 'folke/tokyonight.nvim'
	use 'navarasu/onedark.nvim'
	use { "scottmckendry/cyberdream.nvim" }
end)
--]]
