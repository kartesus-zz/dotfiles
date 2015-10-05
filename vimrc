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
map <C-h> :bp<CR>
map <C-l> :bn<CR>
map <C-d> :bd<CR>
nmap <silent> ,, :nohlsearch<CR>
cmap w!! w !sudo tee % > /dev/null
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guifont=Source\ Code\ Pro\ 11
colorscheme anderson

let g:ctrlp_user_command = [
	\ '.git', 'cd %s && git ls-files . -co --exclude-standard',
	\ 'find %s -type f'
	\ ]
