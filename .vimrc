" Pathogen execution on startup
execute pathogen#infect()
syntax on

filetype plugin indent on
filetype plugin on

" Allow nerdTree to modify
set modifiable

map <C-n> : NERDTreeToggle<CR> 
map <Leader>n <plug>NERDTreeTabsToggle<CR>

let mapleader = ","

" Goconfiguration
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>s <Plug>(go-implements)

au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

" Python Configuration
au BufNewFile,BufRead *.py
    \ set tabstop=4       |
    \ set softtabstop=4   |
    \ set shiftwidth=4    |
    \ set textwidth=79    |
    \ set expandtab       |
    \ set autoindent      |
    \ set fileformat=unix 

" SimpylFold
let g:SimpylFold_docstring_preview = 1 
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
" Fix indentation to 2 spaces
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nu
set nocompatible
set backspace=2

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

set splitbelow
set splitright

set foldmethod=indent
set foldlevel=99

set background=dark
color peachpuff

" Mapping
no <down> ddp
no <up> ddkP
no <left> gT
no <right> gt

noremap <space> za

" Window navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" CTRL-X is Cut
vnoremap <C-X> "+x

" CTRL-C is Copy
vnoremap <C-C> "+y

" adding syntax highlighting for all *.md files
au BufRead,BufNewFile *.md set filetype=markdown

" Mapping VisualStudio commands
nnoremap <Leader>i :vsc Resharper.Resharper_GoToImplementation<CR>
nnoremap <Leader>f :vsc Resharper.Resharper_GoToFile<CR>
nnoremap <Leader>d :vsc Resharper.Resharper_GoToDeclaration<CR>

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

" Source extra options
let $dir =$HOME."/dotfiles/.vim" "set the .vim folder path

" so $dir/vimrcs/vimrcs.vim
