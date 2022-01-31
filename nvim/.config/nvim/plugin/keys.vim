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
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" Grep
nnoremap <leader>fl <cmd>lua require('telescope.builtin').live_grep({ hidden = true })<cr>

" NerdTree
nnoremap <C-p> :NERDTreeToggle<cr>
nnoremap <leader><C-p> :NERDTreeRefreshRoot<cr>

" Undofile
nnoremap <leader>u :UndotreeToggle<CR>

" REPL
nnoremap <leader>r :REPLToggle

" Harpoon
nnoremap <leader>hm :lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>ha :lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<cr>
nnoremap <leader>5 :lua require("harpoon.ui").nav_file(5)<cr>

" lsp-config
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <space>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <silent> <space>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <silent> <space>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <silent> <space>D <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <space>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <space>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <space>e <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap <silent> [d <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d <cmd>lua vim.diagnostic.goto_next()<CR>
" nnoremap <silent> <space>q <cmd>lua vim.diagnostic.setloclist()<CR>
nnoremap <silent> <space>f <cmd>lua vim.lsp.buf.formatting()<CR>

" Lsp Saga
" nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" " Code actions
" nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
" vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
" " Docs
" nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
" " Preview scroll up/down
" nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
" nnoremap <silent> gr <cmd>lua require('lspsaga.rename').rename()<CR>
" nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
" " -- float terminal also you can pass the cli command in open_float_terminal function
" nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>
" tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>

" " Code navigation shortcuts
" nnoremap <silent> gD <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> 1gD <cmd>lua vim.lsp.buf.type_definition()<CR>
" " Set updatetime for CursorHold
" " 300ms of no cursor movement to trigger CursorHold

" " Goto previous/next diagnostic warning/error
" nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
" nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
