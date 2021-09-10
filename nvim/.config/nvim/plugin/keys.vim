" Leader
nnoremap <Space> <Nop>
let mapleader=" "

" General mappings
nnoremap <silent> Q <Nop>
inoremap jj <Esc>
nnoremap <leader>w :write<cr>
nnoremap <leader>s :update<cr>
nnoremap <leader>q :quit<cr>
nnoremap <leader>Q :quitall<cr>
tnoremap <Esc> <C-\><C-n>
" inoremap <Tab> <C-n>
" inoremap <S-Tab> <C-p>

" Black hole
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Use clipboard to copy/paste
vnoremap <leader>c "*y
vnoremap <leader>v "*p

" Yank should behave like the rest of the children...
nnoremap Y y$

" Keep cursor centered while searching
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Best remaps ever
vnoremap <C-j> :m '>+1'<cr>gv=gv
vnoremap <C-k> :m '<-2'<cr>gv=gv
inoremap <C-j> <esc>:m .+1<cr>==i
inoremap <C-k> <esc>:m .-2<cr>==i
" nnoremap <C-j> :m .+1<cr>==
" nnoremap <C-k> :m .-2<cr>==

" Add blank lines
nnoremap <leader>o mzo<esc>`z
nnoremap <leader>O mzO<esc>`z

" Remove highlights
nnoremap <C-n> :nohl<cr>

" Vertical split resizing
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" Navigate between splits and tabs
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader><Tab> gt
nnoremap <leader><S-Tab> gT

" Maximizer
nnoremap <leader>m :MaximizerToggle<cr>

" Telescope
" Find files
nnoremap <leader>fp <cmd>lua require('telescope.builtin').find_files({ hidden = true })<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" Grep
nnoremap <leader>gs <cmd>lua require('telescope.builtin').grep_string({ hidden = true })<CR>
nnoremap <leader>gf <cmd>lua require('telescope.builtin').live_grep({ hidden = true })<cr>

" NerdTree
nnoremap <C-p> :NERDTreeToggle<cr>

" Undofile
nnoremap <leader>u :UndotreeToggle<CR>

