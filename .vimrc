" INSTALL VUNDLE
" this MUST COME at the TOP of your vimrc
set nocompatible              " required 
filetype off 									" required  


" set the runtime path to include Vundle and initialize 
set rtp+=$HOME/.vim/bundle/Vundle.vim 
call vundle#begin()  

" alternatively, pass a path where Vundle should install plugins 
"call vundle#begin('~/some/path/here')  

" let Vundle manage Vundle, required 
Plugin 'gmarik/Vundle.vim'  

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)   

" All of your Plugins must be added before the following line 
call vundle#end()            " required 
filetype plugin indent on    " required

" place the rest of your vimrc here:


" Enable folding
set	foldmethod=indent
set foldlevel=99



" syntax options
syntax on

" set cursor to always be middle of screen
set so=999

" disable auto comment 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" enable syntax for various file types
au BufNewFile,BufRead *.ejs set filetype=html " EJS templating

" set tabs and spaces
" use real tabs that are as large as two spaces
set noexpandtab " Make sure that every file uses real tabs, not spaces
set shiftround  " Round indent to multiple of 'shiftwidth'
set autoindent  " copy indent from current line over to the new line

" set tab width
let s:tabwidth=2
au FileType * let &l:tabstop = s:tabwidth
au FileType * let &l:shiftwidth = s:tabwidth
au FileType * let &l:softtabstop = s:tabwidth

