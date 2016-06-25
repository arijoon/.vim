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

set background=dark
color peachpuff

" Mapping
no <down> ddp
no <up> ddkP
no <left> gT
no <right> gt

" Window navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" CTRL-X is Cut
vnoremap <C-X> "+x

" CTRL-C is Copy
vnoremap <C-C> "+y

" CTRL-V is Paste
map <C-V> "+gP

" adding syntax highlighting for all *.md files
au BufRead,BufNewFile *.md set filetype=markdown

" Mapping VisualStudio commands
nnoremap <Leader>i :vsc Resharper.Resharper_GoToImplementation<CR>
nnoremap <Leader>f :vsc Resharper.Resharper_GoToFile<CR>
nnoremap <Leader>d :vsc Resharper.Resharper_GoToTypeDeclaration<CR>

