syntax on

set so=999 " cursor is always in the middle of screen
" set softtabstop=2
" set shiftwidth=2 noexpandtab

" syntax for express apps
au BufNewFile,BufRead *.ejs set filetype=html

" for vundle, pathogen, other vim packages
execute pathogen#infect()

filetype plugin indent on

" use real tabs that are as large as two spaces
set noexpandtab " Make sure that every file uses real tabs, not spaces
set shiftround  " Round indent to multiple of 'shiftwidth'
set autoindent  " Copy indent from current line, over to the new line

" Set the tab width
let s:tabwidth=2
au Filetype * let &l:tabstop = s:tabwidth
au Filetype * let &l:shiftwidth = s:tabwidth
au Filetype * let &l:softtabstop = s:tabwidth
