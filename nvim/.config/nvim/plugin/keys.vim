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
" inoremap <Tab> <C-n>
" inoremap <S-Tab> <C-p>
tnoremap jj <C-\><C-n>

" Black hole
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Use clipboard to copy/paste
vnoremap <leader>y "*y
nnoremap <leader>y "*y
vnoremap <leader>p "*p
nnoremap <leader>p "*p

" Yank should behave like the rest of the children...
nnoremap Y y$

" Keep cursor centered while searching
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Keep centered
nnoremap <C-d> <C-d>zzzv
nnoremap <C-u> <C-u>zzzv

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
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" Navigate between splits and tabs
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader><Tab> gt
nnoremap <leader><S-Tab> gT

" Maximizer
nnoremap <leader>m :MaximizerToggle<cr>

" Git
nnoremap <leader>gs :G<cr>
nnoremap <leader>gj :diffget //3<cr>
nnoremap <leader>gf :diffget //2<cr>

" Telescope
" Find files
nnoremap <leader>fp <cmd>lua require('telescope.builtin').find_files({ hidden = true })<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
" Grep
nnoremap <leader>fl <cmd>lua require('telescope.builtin').live_grep({ hidden = true })<cr>

" NerdTree
nnoremap <C-p> <cmd>NERDTreeToggle<cr>
nnoremap <leader><C-p> <cmd>NERDTreeRefreshRoot<cr>

" Undofile
nnoremap <leader>u <cmd>UndotreeToggle<CR>


" Harpoon
nnoremap <leader>hm <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>ha <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>1 <cmd>lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <leader>2 <cmd>lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <leader>3 <cmd>lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <leader>4 <cmd>lua require("harpoon.ui").nav_file(4)<cr>
nnoremap <leader>5 <cmd>lua require("harpoon.ui").nav_file(5)<cr>

