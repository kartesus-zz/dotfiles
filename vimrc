execute pathogen#infect()
set nocompatible
set background=dark
syntax on
filetype plugin indent on
let mapleader='\'
set hidden
set nowrap
set tabstop=2
set softtabstop=2
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftwidth=2
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set noerrorbells
set nobackup
set noswapfile
set pastetoggle=<F2>
set autowrite
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <silent> ,, :nohlsearch<CR>
cmap w!! w !sudo tee % > /dev/null
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guifont=Source\ Code\ Pro\ Light\ 12
colorscheme material
