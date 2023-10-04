 
" hi FoldColumn  ctermfg=0     ctermbg=blue
" hi Folded      ctermfg=0 ctermbg=blue

" ZfFold
function! ZfFold(char)
    " if getline(v:lnum) =~ '^'. a:char . ' .*$'
    "     return ">1"
    " endif
    if getline(v:lnum) =~ '^'. a:char.a:char. ' .*$'
        return ">1"
    endif
    if getline(v:lnum) =~ '^'. a:char.a:char.a:char. ' .*$'
        return ">2"
    endif
    if getline(v:lnum) =~ '^'. a:char.a:char.a:char.a:char. ' .*$'
        return ">3"
    endif
    if getline(v:lnum) =~ '^'. a:char.a:char.a:char.a:char.a:char. ' .*$'
        return ">4"
    endif
    if getline(v:lnum) =~ '^'. a:char.a:char.a:char.a:char.a:char.a:char. ' .*$'
        return ">5"
    endif
    return "=" 
endfunction

" ZfFoldText
function! ZfFoldText()
      let line = getline(v:foldstart)
      return line
endfunction


" ZfFold autocommands
au BufEnter *.env,.txt,*zsh*,*.env  setlocal foldexpr=ZfFold('#')
au BufEnter *.env,.txt,*zsh*  setlocal foldmethod=expr
au BufEnter *.env,.txt,*zsh*  setlocal foldtext=ZfFoldText()
au BufEnter *vim* setlocal foldexpr=ZfFold('\"')
au BufEnter *vim* setlocal foldmethod=expr
au BufEnter *vim* setlocal foldtext=ZfFoldText()
au BufEnter xmodmap setlocal foldexpr=ZfFold('!')
au BufEnter xmodmap setlocal foldmethod=expr
au BufEnter xmodmap setlocal foldtext=ZfFoldText()
