augroup fuckautocomments
    autocmd!
    autocmd BufEnter * set fo-=cro
augroup end

" Auto formatting
augroup remove_whitespaces
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup end

" Resize splits when the window is resized
augroup splits
    autocmd!
    autocmd VimResized * :wincmd =
augroup end

" Autosave buffers before leaving them
augroup autosave
    autocmd!
    autocmd BufLeave * silent! :wa"
augroup end

augroup tabs_for_js_jsx_ts_tsx
    autocmd!
	autocmd BufEnter,BufRead,BufNewFile *.jsx set filetype=javascriptreact tabstop=2 expandtab
	autocmd BufEnter,BufRead,BufNewFile *.js set filetype=javascript tabstop=2 expandtab
	autocmd BufEnter,BufRead,BufNewFile *.tsx set filetype=typescriptreact tabstop=2 expandtab
	autocmd BufEnter,BufRead,BufNewFile *.ts set filetype=typescript tabstop=2 expandtab
augroup end

" augroup filetype_jsx
"     autocmd!
" 	autocmd BufEnter,BufRead,BufNewFile *.jsx set filetype=javascriptreact
" 	autocmd BufEnter,BufRead,BufNewFile *.js set filetype=javascript
" augroup end

" augroup json_autocmd
"   autocmd!
"   autocmd FileType json set autoindent
"   autocmd FileType json set formatoptions=tcq2l
"   autocmd FileType json set textwidth=78 shiftwidth=2
"   autocmd FileType json set softtabstop=2 tabstop=8
"   autocmd FileType json set expandtab
"   autocmd FileType json set foldmethod=syntax
" augroup END

" " .js, .jsx
" au! BufRead,BufNewFile *.js set filetype=js
" au! BufRead,BufNewFile *.jsx set filetype=js

" augroup js_autocmd
"   autocmd!
"   autocmd FileType js set autoindent
"   autocmd FileType js set formatoptions=tcq2l
"   autocmd FileType js set textwidth=78 shiftwidth=2
"   autocmd FileType js set softtabstop=2 tabstop=8
"   autocmd FileType js set expandtab
" augroup END
