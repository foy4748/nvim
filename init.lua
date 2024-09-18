-- Enable line numbers
vim.opt.number = true
-- Enable relative line numbers
vim.opt.relativenumber = true
-- Enable auto indentation
vim.opt.autoindent = true
-- Set tab width
vim.opt.tabstop = 4
-- Set shift width
vim.opt.shiftwidth = 4
-- Enable smart tab
vim.opt.smarttab = true
-- Set soft tab stop
vim.opt.softtabstop = 4
-- Enable mouse support
vim.opt.mouse = 'a'
-- Open new splits to the right
vim.opt.splitright = true
-- Open new splits below
vim.opt.splitbelow = true

vim.cmd([[

	" Customizing Active Tab Color
	hi TabLineSel ctermfg=White ctermbg=LightBlue


	set encoding=UTF-8

	" Fix for :Rg preview window
	" let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH

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

	" COC PLUGINS
	" List of All COC Plugins Used in this config
	let g:coc_global_extensions = [
	      \'coc-tsserver',
	      \'coc-prettier',
	      \'coc-json',
	      \'coc-eslint',
	      \'coc-prisma',
	      \'coc-jedi',
	      \'coc-css', 
	      \'coc-json',
		  \'coc-yaml'
	      \]


	nnoremap <C-f> :NERDTreeFocus<CR>
	nnoremap <C-n> :NERDTree<CR>
	nnoremap <C-t> :NERDTreeToggle<CR>
	nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>


	:set completeopt-=preview " For No Previews


	let g:NERDTreeDirArrowExpandable="+"
	let g:NERDTreeDirArrowCollapsible="~"

	" air-line
	let g:airline_powerline_fonts = 1
	"let g:airline#extensions#tabline#enabled = 1

	if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
	endif

	"EMMET DEFAULT CONFIGURATIONS
	let g:user_emmet_settings = {
	\  'variables': {'lang': 'en'},
	\  'html': {
	\    'default_attributes': {
	\      'option': {'value': v:null},
	\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
	\    },
	\    'snippets': {
	\      'html:5': "<!DOCTYPE html>\n"
	\              ."<html lang=\"${lang}\">\n"
	\              ."<head>\n"
	\              ."\t<meta charset=\"${charset}\">\n"
	\              ."\t<title></title>\n"
	\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
	\              ."</head>\n"
	\              ."<body>\n\t${child}|\n</body>\n"
	\              ."</html>",
	\    },
	\  },
	\}
	"END of EMMET DEFAULT CONFIGURATIONS ____________________ 

]])

-- COC Default Configs in Lua
-- https://raw.githubusercontent.com/neoclide/coc.nvim/master/doc/coc-example-config.lua

-- Some servers have issues with backup files, see #649
vim.opt.backup = false
vim.opt.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Use <c-j> to trigger snippets
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- Use <c-space> to trigger completion
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- GoTo code navigation
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})


-- Use K to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})


-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})


-- Symbol renaming
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})


-- Formatting selected code
keyset("x", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})
keyset("n", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})


-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder
vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})

-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
local opts = {silent = true, nowait = true}
keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

-- Remap keys for apply code actions at the cursor position.
keyset("n", "<leader>ac", "<Plug>(coc-codeaction-cursor)", opts)
-- Remap keys for apply source code actions for current file.
keyset("n", "<leader>as", "<Plug>(coc-codeaction-source)", opts)
-- Apply the most preferred quickfix action on the current line.
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)

-- Remap keys for apply refactor code actions.
keyset("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", { silent = true })
keyset("x", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })
keyset("n", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })

-- Run the Code Lens actions on the current line
keyset("n", "<leader>cl", "<Plug>(coc-codelens-action)", opts)


-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server
keyset("x", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("o", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("x", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("o", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("x", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("o", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("x", "ac", "<Plug>(coc-classobj-a)", opts)
keyset("o", "ac", "<Plug>(coc-classobj-a)", opts)


-- Remap <C-f> and <C-b> to scroll float windows/popups
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true, expr = true}
keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)
keyset("i", "<C-f>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
keyset("i", "<C-b>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)


-- Use CTRL-S for selections ranges
-- Requires 'textDocument/selectionRange' support of language server
keyset("n", "<C-s>", "<Plug>(coc-range-select)", {silent = true})
keyset("x", "<C-s>", "<Plug>(coc-range-select)", {silent = true})


-- Add `:Format` command to format current buffer
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- " Add `:Fold` command to fold current buffer
vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", {nargs = '?'})

-- Add `:OR` command for organize imports of the current buffer
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Add (Neo)Vim's native statusline support
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline
-- vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")
-- Suggested by Copilot ----------------
local status = "%{coc#status()}%{get(b:,'coc_current_function','')}"
status = status:gsub("%%", "%%%%")  -- Escape the '%' characters

-- Convert the current statusline to a string if it's a table
local current_statusline = vim.api.nvim_get_option('statusline')
if type(current_statusline) == "table" then
    current_statusline = table.concat(current_statusline)
end

vim.api.nvim_set_option('statusline', current_statusline .. status)
-- End of Suggested by Coplilot ---------------

-- Mappings for CoCList
-- code actions and coc stuff
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true}
-- Show all diagnostics
keyset("n", "<space>a", ":<C-u>CocList diagnostics<cr>", opts)
-- Manage extensions
keyset("n", "<space>e", ":<C-u>CocList extensions<cr>", opts)
-- Show commands
keyset("n", "<space>c", ":<C-u>CocList commands<cr>", opts)
-- Find symbol of current document
keyset("n", "<space>o", ":<C-u>CocList outline<cr>", opts)
-- Search workspace symbols
keyset("n", "<space>s", ":<C-u>CocList -I symbols<cr>", opts)
-- Do default action for next item
keyset("n", "<space>j", ":<C-u>CocNext<cr>", opts)
-- Do default action for previous item
keyset("n", "<space>k", ":<C-u>CocPrev<cr>", opts)
-- Resume latest coc list
keyset("n", "<space>p", ":<C-u>CocListResume<cr>", opts)
-- COC END of Default Configs in Lua

vim.cmd([[

	" QuickScope Color Customization
	" augroup qs_colors
	"   autocmd!
	"   autocmd ColorScheme * highlight QuickScopePrimary guifg='#ffffff' gui=underline ctermfg=155 cterm=underline
	"   autocmd ColorScheme * highlight QuickScopeSecondary guifg='#000000' gui=underline ctermfg=81 cterm=underline
	" augroup END
	" END of QuickScope Color Customization

	"FOLDING Settings
	augroup remember_folds
	  autocmd!
	  autocmd BufWinLeave * mkview
	  autocmd BufWinEnter * silent! loadview
	augroup END
	"END of FOLDING Settings

	"Color Scheme =======================
	"colorscheme default
	"colorscheme slate


	" === For OneDark theme
	let g:onedark_config = {
	     \ 'style': 'deep',
	 \}
	colorscheme onedark
	" === END


	" === For Catppuccin theme
	" colorscheme catppuccin
	" === END


	" === For Material theme
	" let g:material_style = 'deep ocean'
	"let g:material_style = 'pale night'
	"let g:material_style = 'darker'
	" colorscheme material
	" === END

	" === For TokyoNight theme
	"colorscheme tokyonight

	" There are also colorschemes for the different styles.
	" colorscheme tokyonight-night
	" colorscheme tokyonight-storm
	" colorscheme tokyonight-day
	" colorscheme tokyonight-moon
	" === END

	" END Color Scheme =======================

]])

-- Setting Up RG preview window
vim.env.FZF_DEFAULT_OPTS = "--delimiter ':' --preview-window '+{2}-20'"
-- vim.env.FZF_DEFAULT_OPTS = "--delimiter ':' --preview-window 'right:70%'"

-- Function for LcnFzfSelectionUI
function LcnFzfSelectionUI(source, sink)
    return vim.fn'fzf#run'
end

vim.g.LanguageClient_selectionUI = 'LcnFzfSelectionUI'

-- Configuring TAILWINDCSS
vim.api.nvim_create_autocmd("FileType", {
    pattern = "html",
    callback = function()
        vim.b.coc_root_patterns = {'.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs'}
    end  -- This 'end' closes the callback function
})


-- Fixing 'node is not executable' error
-- https://stackoverflow.com/questions/61537302/neovim-coc-node-is-not-executable

-- let g:coc_node_path = '/home/foy4748/.nvm/versions/node/v20.10.0/bin/node'  " vimscript config
vim.g.coc_node_path = '/home/foy4748/.nvm/versions/node/v20.10.0/bin/node' -- lua config
