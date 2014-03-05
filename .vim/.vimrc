" Pathogen execution on startup
execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_symbols = 'fancy'
" Adding NERDTreeToggle uption to Ctrl-n
map <C-n> : NERDTreeToggle<CR> 

" Fix indentation to 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
