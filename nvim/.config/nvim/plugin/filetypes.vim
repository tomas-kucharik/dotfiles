" Json autocommands
au! BufRead,BufNewFile *.json set filetype=json

augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END

" .js, .jsx
au! BufRead,BufNewFile *.js set filetype=js
au! BufRead,BufNewFile *.jsx set filetype=js

augroup js_autocmd
  autocmd!
  autocmd FileType js set autoindent
  autocmd FileType js set formatoptions=tcq2l
  autocmd FileType js set textwidth=78 shiftwidth=2
  autocmd FileType js set softtabstop=2 tabstop=8
  autocmd FileType js set expandtab
augroup END
