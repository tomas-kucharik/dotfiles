" Colorscheme
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox
colorscheme onedark
" hi Normal ctermbg=NONE guibg=NONE

" Font
set guifont=DroidSansMono_Nerd_Font:h11

" Vim settings
set exrc                                    " Use local .vimrc if exists
set encoding=UTF-8                          " Encoding

" Line numbers
set relativenumber                          " Relative numbers
set number                                  " Current line number

set hidden                                  " Dont unload buffer
set noerrorbells                            " Do not ring bell for error messages

set mouse=a									" Sometimes... mouse is fine

" Tabs and indentation
set tabstop=4                               " Tabs
set softtabstop=0
set shiftwidth=0
set noexpandtab
set smartindent
set autoindent

set nowrap                                  " Dont wrap lines
set noswapfile                              " Dont use .swap files
set nobackup                                " Dont keep backup after owerwritin file
set termguicolors                           " Use terminal colors
set scrolloff=10                            " Number of lines to show around the cursor
set signcolumn=yes                          " Extra gutter for stuff
set cursorline                              " Highlight current cursor line
set wildmenu                                " Command line completion shows a list of matches

" Search stuff
set hlsearch                                " Highlight searches
set ignorecase                              " Ignore case of searches
set smartcase
set incsearch

" Splits
set splitbelow
set splitright

" Undofile
set undofile                                " Use undo files for undo history
set undodir=~/.vim/undodir                  " Undo file directory

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert

" Avoid showing extra messages when using completion
set shortmess+=c
