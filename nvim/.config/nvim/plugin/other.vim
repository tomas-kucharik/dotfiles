" Git blame
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

" NerdTree show hidden files
let NERDTreeShowHidden=1
let g:NERDTreeIgnore = ['^node_modules$', '.DS_Store', ".git$", ".ipynb_checkpoints$", "__pycache__$"] " ignore node_modules to increase load speed

" Airline devicons dependancy
let g:airline_powerline_fonts = 1

" netrw viewer
let g:netrw_browsex_viewer = "xdg-open"
