call plug#begin("~/.local/share/vim/plugged")
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'

"" Auto-Pairs
    Plug 'jiangmiao/auto-pairs'

"" Buftabline
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

""MVim Symlink
    Plug 'aymericbeaumet/vim-symlink'

"" vim-diminactive
Plug 'blueyed/vim-diminactive'

"" You complete me
    Plug 'ycm-core/YouCompleteMe'

"" FZF
    Plug 'junegunn/fzf.vim'

"" Mappings
nmap <leader>fd :Files $HOME/dotfiles/<CR>
nmap <leader>ff :Files $HOME<CR>


"" Easy-Align
	Plug 'junegunn/vim-easy-align'
    xmap ga <Plug>(EasyAlign)

"" base16-vim
    Plug 'chriskempson/base16-vim'

"" vim-css-color
    Plug 'ap/vim-css-color'

"" BufClose
    Plug 'vim-scripts/BufClose.vim'

"" Vim Airline
    " Plug 'vim-airline/vim-airline'
    " let g:airline#extensions#tabline#enabled = 1
    " let g:airline#extensions#tabline#left_sep = ' '
    " let g:airline#extensions#tabline#left_alt_sep = '|'
"" Vim Airline Themes
    " Plug 'vim-airline/vim-airline-themes'
    " let g:airline_theme=''
""" Fonts

"" Easymotion
  Plug 'easymotion/vim-easymotion'

"" Commentary
  Plug 'tpope/vim-commentary'


"" Vim-Misc / Vim-Session
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
"" Plugins End
call plug#end()



