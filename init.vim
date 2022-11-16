" tab/indentation options
set tabstop=2 softtabstop=2
set expandtab
set shiftwidth=2
set autoindent " auto indent newline just as much as previous line
filetype plugin indent on " allows auto indenting depending on type of file

" line numbers
set number " add line numbers
set relativenumber
set showmatch 

" search 
set nohlsearch " no higlighting for search
set incsearch

" scrolling
set scrolloff=12
set ttyfast " speed up scrolling

set signcolumn=yes
set colorcolumn=80

set hidden " keep buffers open
set noerrorbells

set completeopt=menu,menuone,noselect

" changes some color settings or something idk but it looks awful without it
set termguicolors

call plug#begin()
  " Editor plugins
  Plug 'numToStr/Comment.nvim'
  Plug 'preservim/nerdtree'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'f-person/git-blame.nvim'

  " This is for lazy loading plugins? ngl idk
  Plug 'nvim-lua/plenary.nvim'

  " Language specific plugins
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'hashivim/vim-terraform'

  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'

  " coq. For tab-completion
  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
  Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

  " Themes
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'gruvbox-community/gruvbox'
  Plug 'whatyouhide/vim-gotham'
  Plug 'arcticicestudio/nord-vim'

  " For Lsp Installation
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
call plug#end()

colorscheme dracula

" Keybinds
let mapleader="\<SPACE>"

" Global Keybinds
nnoremap <leader>e <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap [d <cmd>lua vim.diagnostic.goto_prev()<CR> 
nnoremap ]d <cmd>lua vim.diagnostic.goto_next()<CR> 
nnoremap <leader>q <cmd>lua vim.diagnostic.setloclist()<CR> 

" NERDTree keybinds
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>d :NERDTreeFind<CR>

" Telescope keybinds
nnoremap <leader>ff :Telescope git_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>

let g:coq_settings = { 'auto_start': 'shut-up' }

lua require('init')
