if has("gui_running")
	let g:Powerline_symbols = 'fancy'
	autocmd Vimenter * NERDTreeTabsToggle 

	" Change initial window size
	set lines=50 columns=150

	" Set colours
	set background=dark
	colorscheme solarized
	set guifont=Courier_New:h11
endif
