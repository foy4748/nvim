-- " Currently Causing Issue while using fuzzy find
-- " for using these settings below
-- "FOLDING Settings
-- augroup remember_folds
--   autocmd!
--   autocmd BufWinLeave * mkview
--   autocmd BufWinEnter * silent! loadview
-- augroup END
-- "END of FOLDING Settings
-- augroup AutoSaveGroup
--   autocmd!
--   " view files are about 500 bytes
--   " bufleave but not bufwinleave captures closing 2nd tab
--   " nested is needed by bufwrite* (if triggered via other autocmd)
--   " BufHidden for compatibility with `set hidden`
--   autocmd BufWinLeave,BufLeave,BufWritePost,BufHidden,QuitPre ?* nested silent! mkview!
--   autocmd BufWinEnter ?* silent! loadview
-- augroup end

vim.cmd([[
	" Fix for :Rg preview window
	" let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH

	" ==========================

]])
-- Set view options
vim.opt.viewoptions = { "folds", "cursor" }

-- Set session options
vim.opt.sessionoptions = { "folds" }

-- Fixing 'node is not executable' error
-- https://stackoverflow.com/questions/61537302/neovim-coc-node-is-not-executable

-- let g:coc_node_path = '/home/foy4748/.nvm/versions/node/v20.10.0/bin/node'  " vimscript config
vim.g.coc_node_path = '/home/foy4748/.nvm/versions/node/v20.10.0/bin/node' -- lua config

-- For turning OFF NeoVim upgradation 0.7 -> 0.8 warning
-- vim.g.coc_disable_startup_warning = 1

vim.cmd([[
  autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
]])
