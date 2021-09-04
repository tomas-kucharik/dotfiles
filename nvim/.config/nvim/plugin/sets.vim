" Colorscheme
colorscheme onedark
hi Normal ctermbg=NONE guibg=NONE

" Font
set guifont=DroidSansMono_Nerd_Font:h11

" Vim settings
set exrc                                    " Use local .vimrc if exists
set encoding=UTF-8                          " Encoding
set relativenumber                          " Relative numbers
set number                                  " Current line number
set hidden                                  " Dont unload buffer
set noerrorbells                            " Do not ring bell for error messages
set tabstop=4                               " Tabs
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
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

