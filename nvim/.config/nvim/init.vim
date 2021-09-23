call plug#begin('~/.vim/plugged')
" MUST HAVES
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" Treesitter highlighting, indentation, folding
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" NERDTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" undotree
Plug 'mbbill/undotree'
" Formatting
Plug 'sbdchd/neoformat'
" tpope goodies
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
" Easymotion
Plug 'easymotion/vim-easymotion'
" Gitgutter
Plug 'airblade/vim-gitgutter'
" Illuminate words currently under cursor
Plug 'RRethy/vim-illuminate'
" Split maximizer
Plug 'szw/vim-maximizer'
" Status line
Plug 'vim-airline/vim-airline'
" Json formatting
Plug 'elzr/vim-json'

" OPTIONALS
" Paste with indentation
Plug 'sickill/vim-pasta'
" Fancy start screen
Plug 'mhinz/vim-startify'
" Git blame
Plug 'zivyangll/git-blame.vim'
" Auto pairs for {[('""')]}
Plug 'jiangmiao/auto-pairs'
" Toggle between single and multiline statements
Plug 'AndrewRadev/splitjoin.vim'
" REPL
Plug 'sillybun/vim-repl'

" THEMES
" Dev icons
Plug 'ryanoasis/vim-devicons'
" The one and only theme you need
Plug 'joshdick/onedark.vim'

" LSP + LSP STUFF
" Language server protocol
Plug 'neovim/nvim-lspconfig'
" Lsp Install
Plug 'kabouzeid/nvim-lspinstall'
" Autocompletion
Plug 'hrsh7th/nvim-compe'
" Snippets
Plug 'hrsh7th/vim-vsnip'
call plug#end()

