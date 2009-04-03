
let mapleader = ","
augroup mkd
    autocmd BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:>
augroup END

autocmd BufRead *.py,*.mkd,*.ql  setlocal textwidth=80
autocmd BufRead *.py,*.mkd,*.ql  setlocal tabstop=4
autocmd BufRead *.py,*.mkd,*.ql  setlocal shiftwidth=4
autocmd BufRead *.py,*.mkd,*.ql  setlocal softtabstop=4
autocmd BufRead *.py,*.mkd,*.ql  setlocal expandtab
autocmd BufRead *.py  setlocal smarttab
autocmd BufRead *.py  setlocal autoindent
autocmd BufRead *.py  set number

"
"Printing
"
set printoptions=paper:letter
filetype plugin indent on
syntax on
