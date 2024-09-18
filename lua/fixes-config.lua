
vim.cmd([[
	" Fix for :Rg preview window
	" let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH

	" ==========================

	"FOLDING Settings
	augroup remember_folds
	  autocmd!
	  autocmd BufWinLeave * mkview
	  autocmd BufWinEnter * silent! loadview
	augroup END
	"END of FOLDING Settings
]])

-- Fixing 'node is not executable' error
-- https://stackoverflow.com/questions/61537302/neovim-coc-node-is-not-executable

-- let g:coc_node_path = '/home/foy4748/.nvm/versions/node/v20.10.0/bin/node'  " vimscript config
vim.g.coc_node_path = '/home/foy4748/.nvm/versions/node/v20.10.0/bin/node' -- lua config

-- For turning OFF NeoVim upgradation 0.7 -> 0.8 warning
vim.g.coc_disable_startup_warning = 1
