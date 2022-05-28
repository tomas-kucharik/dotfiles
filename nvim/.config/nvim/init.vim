call plug#begin('~/.vim/plugged')
" LSP
Plug 'neovim/nvim-lspconfig'
" Language server installer
Plug 'williamboman/nvim-lsp-installer'

" " Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
" Other completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'

" Snippets
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Schemastore support for json lsp
Plug 'b0o/schemastore.nvim'

" Advanced features of rust-analyzer (inlay-hints)
Plug 'simrat39/rust-tools.nvim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Treesitter highlighting, indentation, folding
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" NERDTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Dev icons
Plug 'ryanoasis/vim-devicons'

" Vim-tmux Navigator
Plug 'christoomey/vim-tmux-navigator'

" undotree
Plug 'mbbill/undotree'

" Lightspeed
Plug 'ggandor/lightspeed.nvim'

" tpope goodies
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" Gitgutter
Plug 'airblade/vim-gitgutter'

" Illuminate words under cursor
Plug 'RRethy/vim-illuminate'

" Split maximizer
Plug 'szw/vim-maximizer'

" Status line
Plug 'vim-airline/vim-airline'

" Harpoon
Plug 'ThePrimeagen/harpoon'
" Refactoring
Plug 'ThePrimeagen/refactoring.nvim'

" Auto pairs for {[('""')]}
Plug 'jiangmiao/auto-pairs'

" The one and only theme you need
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

call plug#end()
