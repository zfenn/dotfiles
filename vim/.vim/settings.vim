"
" settings.vim

set autoread

set cmdheight=2

set list
set listchars=trail:•

set noshowmode
" set fillchars=fold:\-
set formatoptions-=cro
set shortmess+=I

set scrolloff=5

set textwidth=72

set noswapfile
set backup

set encoding=utf-8
set nocompatible
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set ruler

set viminfo+=n~/.cache/vim/viminfo " Path to viminfo
set undodir=$XDG_CACHE_HOME/vim/undo    " List of undo dir names (sep by ,)
set undofile
let g:netrw_home=$XDG_CACHE_HOME. '/vim/'

syntax on
filetype plugin on
set cursorline
set relativenumber
set nu rnu
set colorcolumn=78
set hidden
set winfixwidth
set noequalalways
set virtualedit=all
set nostartofline

" set tabline=0

set noswapfile
set ttimeout
set ttimeoutlen=100
set helpheight=999
set laststatus=2
set autochdir
