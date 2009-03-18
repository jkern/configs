
augroup mkd
    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

autocmd BufRead *.py,*.mkd  setlocal textwidth=80
autocmd BufRead *.py,*.mkd  setlocal tabstop=4
autocmd BufRead *.py,*.mkd  setlocal shiftwidth=4
autocmd BufRead *.py,*.mkd  setlocal softtabstop=4
autocmd BufRead *.py,*.mkd  setlocal expandtab
autocmd BufRead *.py  setlocal smarttab
autocmd BufRead *.py  setlocal autoindent
autocmd BufRead *.py  set number

"
"Printing
"
set printoptions=paper:letter
