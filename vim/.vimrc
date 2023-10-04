"
" .vimrc

" Environment
set viminfo+=n$XDG_CACHE_HOME/vim/viminfo

source ~/.vim/settings.vim
source ~/.vim/colors.vim
source ~/.vim/bindings.vim
source ~/.vim/zffold.vim

"" Statusline
hi User1 guifg=white guibg=darkgrey
set statusline=%1*\ %{strftime('%H:%M')} " TIme
set statusline+=\ \|\          		 " Spacer
set statusline+=%l.%L          		 " Line / Lines
set statusline+=\ \|\          		 " Spacer
set statusline+=%v             		 " Line / Lines
set statusline+=\ \|\          		 " Spacer
set statusline+=%F\ %m         		 " Path/Filename [Modified]
set statusline+=\ \|\          		 " Spacer


"" Plugins

call plug#begin("~/.local/share/vim/plugged")
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'

""" Auto-Pairs
    Plug 'jiangmiao/auto-pairs'

""" Buftabline
    Plug 'ap/vim-buftabline'
    " if exists ('buftabline#update')
       " silent call buftabline#update(0)
    " endif
    " au BufWritePost,FileWritePost call buftabline#update(0)

    let g:buftabline_numbers = 2
    let g:buftabline_indicators = 1
    let g:buftabline_separators = 1
    hi BufTabLineCurrent guifg=white      guibg=darkred cterm=bold gui=bold
    hi BufTabLineActive  guifg=white guibg=blue  gui=bold cterm=bold
    hi BufTabLineFill    guibg=grey
    hi BufTabLineHidden  guibg=grey

"""MVim Symlink
    Plug 'aymericbeaumet/vim-symlink'

""" vim-diminactive
Plug 'blueyed/vim-diminactive'

""" You complete me
    Plug 'ycm-core/YouCompleteMe'

""" FZF
    Plug 'junegunn/fzf.vim'

"""" Mappings
nmap <leader>fd :Files $HOME/dotfiles/<CR>
nmap <leader>ff :Files $HOME<CR>


""" Easy-Align
	Plug 'junegunn/vim-easy-align'
    xmap ga <Plug>(EasyAlign)

""" base16-vim
    Plug 'chriskempson/base16-vim'

""" vim-css-color
    Plug 'ap/vim-css-color'

""" BufClose
    Plug 'vim-scripts/BufClose.vim'

""" Vim Airline
    " Plug 'vim-airline/vim-airline'
    " let g:airline#extensions#tabline#enabled = 1
    " let g:airline#extensions#tabline#left_sep = ' '
    " let g:airline#extensions#tabline#left_alt_sep = '|'
"""" Vim Airline Themes
    " Plug 'vim-airline/vim-airline-themes'
    " let g:airline_theme=''
""""" Fonts

""" Easymotion
  Plug 'easymotion/vim-easymotion'

""" Commentary
  Plug 'tpope/vim-commentary'


""" Vim-Misc / Vim-Session
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'
    let g:session_directory = "~/.local/share/vim/sessions"
    "map <C-j> <C-e>
    let g:session_autosave = "yes"
    let g:session_autoload = "yes"
    let g:session_autosave_silent = 1
    let g:session_autosave_verbose = 0
    let g:session_default_to_last = 1
    let g:session_default_overwrite = 0
    " set sessionoptions="curdir,folds,help,options,winsize,tabpges"
    " set viewdir=$HOME/.vim_view//
    " au BufWritePost,BufLeave,WinLeave ?* mkview " for tabs
    " au BufWinEnter ?* silent loadview
    " let g:sess
""" Plugins End
call plug#end()


"" Source vim-configs on save
autocmd! bufwritepost *vim* source ~/.vimrc
"" Disabled Delete trailing space on save"
" autocmd! BufWritePre * :%s/\s\+$//e

"" Change cursor for Normal / Insert
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
autocmd InsertLeave * :normal! `^
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" Auto resize panes when window is resized
"autocmd VimResized * wincmd =

"" Map snippet move to tab
" nmap <expr> <tab> v:count > 0 ?
"             \ '<Plug>BufTabLine.Go(' . v:count . ')' :
"             \':bnext<cr>'

" nmap <expr> <s-tab> v:count > 0 ?
"             \'<Plug>BufTabLine.Go(' . v:count . ')' :
"             \':bprev<cr>'

"" Vim Ranger
function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1.
    " Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    if has("gui_running")
          exec 'silent !st -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()


""" Ranger mapping
nnoremap <leader>d :<C-U>RangerChooser<CR>


"" set runtimepath=$XDG_CONFIG_HOME/vim,$XDG_CONFIG_HOME/vim/after,$VIM,$VIMRUNTIME
" let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"
