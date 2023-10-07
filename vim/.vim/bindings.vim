" Bindings

nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

" Mapleader
let mapleader = ","

"" Folds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Toggle open / close fold at the cursor
map eo za

""" Close all folds
map em zM

""" Open all folds at the cursor
map eO zO

""" Move to next (open) fold
map ej zj
map ek zk

"" Go to first non blank in line
map ö _
map - 0
map 0 0
map ä $
map ä $

"" Previous / next position
" nnoremap # :;:

"" Save file
map w <Nop>
map ww :write<CR>
map Q <Nop>
map Qq :q<CR>
map Qw :wa<CR>:q<CR> 

"" Switch between last and current buffer
nnoremap <leader> bb :e #<cr>

"" Window / Panes
unmap w

""" Window Split
map ws :vsplit<CR>

""" Window only
map wo <C-W>o

"" Window Balance
" map = <C-W>= 

"" Jump to next pane
map wj <C-W><C-W>

"" Window Move
map wm <C-W><C-R>

"" Buffer Close

map <leader>bo :e ~/.vim/colors.vim<CR> 
map <leader>bd :bp<CR>:bd#<CR>

"" Insert above / below without starting insert mode
map o o<esc>
map O O<esc>

"" Redo
map U <C-R>

"" Scroll page
map <C-j> 5<C-e>

"" map <C-S-j> <C-D>
map <C-k> 5<C-y>

"" map <C-S-k> <C-U>
" w = w

map G Gzz

" au! BufWritePost $MYVIMRC source $MYVIMRC
" au! BufWritePost $XRESOURCES 
"         \ !xrdb $XRESOURCES && pidof st|xargs kill -s USR1

"" Copy paste from clipboard
noremap <leader>y "*y
noremap <leader>Y "+Y
noremap <leader>p "*p
noremap <leader>p "+p


 " highlight FoldColumn  cterm=bold  ctermfg=2     guibg=Grey90
"highlight Folded      ctermbg=black ctermfg=4

