" MULTIPURPOSE TAB KEY
" Indent if at the beginning of a line. Else, do completion.

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col
        return "\<tab>"
    endif

    let char = getline('.')[col - 1]
    if char =~ '\k'
        return "\<c-p>"
    else
        return "\<tab>"
    endif
endfunction
