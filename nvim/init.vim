"##################"
"#VIM config#"
"###################"

"for indentation
set expandtab "uses spaces as tab
set tabstop=2 
set softtabstop=2
set shiftwidth=2
set smartindent

syntax on
set nobackup
set clipboard=unnamedplus
set completeopt=menuone,noselect
set number relativenumber

"plugins
call plug#begin('~/.config/nvim/plugged')

"alternatives: 'dracula/vim'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'arcticicestudio/nord-vim'
"Plug 'sainnhe/everforest'
Plug 'https://github.com/joshdick/onedark.vim.git'

"telescope with it's requirements..
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

"devicons (recommended for telescope)
Plug 'kyazdani42/nvim-web-devicons'

"git wrapper
Plug 'tpope/vim-fugitive'

"syntax markdown
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"lsp 
Plug 'neovim/nvim-lspconfig'

"someone told me to install this (^8
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

"snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

"lualine
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()
"--------------------------------------------------------------------"
"colorscheme nord 
" Important!!
if has('termguicolors')
  set termguicolors
endif
" For dark version.
set background=dark
" Available values: 'hard', 'medium'(default), 'soft'
"let g:everforest_background = 'hard'
"colorscheme everforest
colorscheme onedark

set encoding=UTF-8
let mapleader = " "
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fs <cmd>Telescope git_status<cr>

"compe config
luafile ~/.config/nvim/config/pkv.lua
