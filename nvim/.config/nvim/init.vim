call plug#begin('~/.vim/plugged')
" Language server protocol
Plug 'neovim/nvim-lspconfig'
" Lsp installer
Plug 'williamboman/nvim-lsp-installer'
"" Completion framework
Plug 'hrsh7th/nvim-cmp'
" LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
" Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'
" Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
" Snippet engine
Plug 'hrsh7th/vim-vsnip'
" Nicer lsp UI
" Plug 'glepnir/lspsaga.nvim'

" Advanced features of rust-analyzer, such as inlay hints etc.
Plug 'simrat39/rust-tools.nvim'

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

" Lightspeed
Plug 'ggandor/lightspeed.nvim'

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

" Harpoon
Plug 'ThePrimeagen/harpoon'

" Auto pairs for {[('""')]}
Plug 'jiangmiao/auto-pairs'
" Terraform
Plug 'hashivim/vim-terraform'

" Dev icons
Plug 'ryanoasis/vim-devicons'

" The one and only theme you need
Plug 'joshdick/onedark.vim'

call plug#end()
