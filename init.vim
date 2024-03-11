:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set splitright
:set splitbelow

" Customizing Active Tab Color
hi TabLineSel ctermfg=White ctermbg=LightBlue


set encoding=UTF-8

" Fix for :Rg preview window
let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH

call plug#begin('$HOME/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim' "For Lua dependecies
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
      \'coc-json'
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
\  'variables': {'lang': 'ja'},
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

"COC DEFAULT CONFIGURATIONS

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"END OF DEFAULT CONFIGURATIONS

" QuickScope Color Customization

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#ffffff' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#000000' gui=underline ctermfg=81 cterm=underline
augroup END
" END of QuickScope Color Customization

"FOLDING Settings
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
"END of FOLDING Settings

"Color Scheme
"colorscheme default
colorscheme slate

"For Suppressing 
"BufWinLeave * mkview with unnamed file: Error 32

" augroup AutoSaveGroup
"   autocmd!
"   " view files are about 500 bytes
"   " bufleave but not bufwinleave captures closing 2nd tab
"   " nested is needed by bufwrite* (if triggered via other autocmd)
"   " BufHidden for compatibility with `set hidden`
"   autocmd BufWinLeave,BufLeave,BufWritePost,BufHidden,QuitPre ?* nested silent! mkview!
"   autocmd BufWinEnter ?* silent! loadview
" augroup end

"Wordpress Path
" let g:wordpress_vim_wordpress_path="C:\\xampp\\htdocs\\saaslar_it"

"Setting Up RG preview window
let $FZF_DEFAULT_OPTS = "--delimiter ':' --preview-window '+{2}-20'"

function! LcnFzfSelectionUI(source, sink) abort
    return fzf#run(fzf#wrap(fzf#vim#with_preview({'source': a:source, 'sink': a:sink})))
endfunction

let g:LanguageClient_selectionUI = function('LcnFzfSelectionUI')

" Fixing 'node is not executable' error
" https://stackoverflow.com/questions/61537302/neovim-coc-node-is-not-executable

let g:coc_node_path = '/home/foy4748/.nvm/versions/node/v20.10.0/bin/node'

" Configuring TAILWINDCSS
au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']
