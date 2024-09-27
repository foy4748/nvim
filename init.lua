-- Including Configs ---------------------------
require('basic-config')
--require('plugin-installation-config')

-- For packer (plugin manager)
require('plugins')

-- COC related
require('coc-plugin-installation-config')
require('coc-config')

-- General Plugins Configs (Packer)
require('nerdtree-config')
require('emmet-config')
require('quickscope-config')
require('ripgrep-fzf-config')
require('tailwindcss-config')
require('telescope-config')

-- Styling
require('color-scheme-setter-config')

-- For error/warning resolves
require('fixes-config')

-- Including Packges ----------------------------

-- Requiring LuaLine
require('lualine').setup({
	options = {
		theme = "auto",
	},
})

-- Requiring Nvim-Treesitter
require 'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true, -- false will disable the whole extension
	},
}
