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
	{ "samharju/synthweave.nvim", },
	{
		"nobbmaestro/nvim-andromeda",
		dependencies = { "tjdevries/colorbuddy.nvim" }
	},
}
