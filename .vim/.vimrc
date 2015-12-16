" Pathogen execution on startup
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_symbols = 'fancy'
" Adding NERDTreeToggle uption to Ctrl-n
"map <C-n> : NERDTreeToggle<CR> 
map <C-n> <plug>NERDTreeTabsToggle<CR>

" Fix indentation to 4 spaces
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
" Allow nerdTree to modify
set modifiable
" Add line number and mapping
set nu
no <down> ddp
no <up> ddkP
no <left> gT
no <right> gt
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
" adding syntax highlighting for all *.md files
au BufRead,BufNewFile *.md set filetype=markdown
" -- au BufRead,BufNewFile *.md set syntax=markdown

