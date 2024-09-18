vim.cmd([[


	" Customizing Active Tab Color
	"hi TabLineSel ctermfg=White ctermbg=LightBlue


	" air-line
	let g:airline_powerline_fonts = 1
	"let g:airline#extensions#tabline#enabled = 1

	if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
	endif

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

