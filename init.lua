-- Including Configs ---------------------------
require('basic-config')
--require('plugin-installation-config')

-- For packer (plugin manager)
-- require('plugins')

-- For lazy (plugin manager)
-- Please install these
-- sudo apt install lua5.1 liblua5.1-0-dev luarocks
-- Then install luarocks and run
-- :Lazy build luarocks.nvim
require("config.lazy")

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

-- Styling and Animation
-- -- Color scheme config
require('color-scheme-setter-config')
-- -- mini.animation config
-- require('mini.animate').setup()
-- require("animate_cursor")

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
