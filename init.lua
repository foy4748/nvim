-- Including Configs ---------------------------
require('basic-config')
--require('plugin-installation-config')

-- For packer (plugin manager)
require('plugins')

-- COC related
require('coc-plugin-installation-config')
require('coc-config')

-- General Plugins (Packer)
require('nerdtree-config')
require('emmet-config')
require('quickscope-config')
require('ripgrep-fzf-config')
require('tailwindcss-config')

-- Styling
require('color-scheme-setter-config')

-- For error/warning resolves
require('fixes-config')

-- Including Packges ----------------------------

-- Requiring LuaLine
require('lualine').setup()
