
vim.cmd([[
	nnoremap <C-f> :NERDTreeFocus<CR>
	nnoremap <C-n> :NERDTree<CR>
	nnoremap <C-t> :NERDTreeToggle<CR>
	nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>


	:set completeopt-=preview " For No Previews


	let g:NERDTreeDirArrowExpandable="+"
	let g:NERDTreeDirArrowCollapsible="~"
]])
