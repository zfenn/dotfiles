
set viminfo+=n$XDG_CACHE_HOME/vim/viminfo

source ~/.vim/settings.vim
source ~/.vim/colors.vim
source ~/.vim/bindings.vim
source ~/.vim/zffold.vim
source ~/.vim/plugins.vim

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
