" INIT
execute pathogen#infect()
set nocompatible
set hidden " hide buffer instead of closing it
set nobackup " don't create backups
set noswapfile " don't create swap files

" SYNTAX
syntax enable
colorscheme anderson

" SPACES & TABS
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " tabstops when editing
set expandtab " tabs are spaces

" UI CONFIG
" set number " show line numbers
set background=dark " use dark background
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guifont=Source\ Code\ Pro\ 11
set showcmd " show command in bottom bar
" set cursorline " highlight current line
set wildmenu " visual menu to complete commands
set lazyredraw " redraw only when needed
set showmatch " highlight matchin [{()}]
set nowrap " don't wrap lines
filetype plugin indent on " loads filetype specific plugin and indent

" SEARCH
set incsearch " search as characteres are entered
set hlsearch " highlight matches
set ignorecase " ignore case on searches
set smartcase " search is case sensitive only when there are capitals
" turn search highlight off
nnoremap <silent> ,, :nohlsearch<CR>

" FOLDING
" set foldenable " enable folding
" set foldlevelstart=10 " open most folds by default
" set foldnestmax=10 " 10 nested fold max
" set foldmethod=indent " fold based on indentation
" nnoremap <space> za " spaces open/close folds

" MOVEMENT
" move verticaly by visual line
nnoremap j gj
nnoremap k gk
" use [ and ] to go to beginning/end of line
nnoremap [ ^ 
nnoremap ] $ 
" disable ^ and $
nnoremap ^ <nop>
nnoremap $ <nop> 

" SHORTCUTS
let mapleader="'" " leader is '  
set pastetoggle=<F2>

map <C-h> :bp<CR> " go to previous buffer
map <C-l> :bn<CR> " go to next buffer
map <C-d> :bd<CR> " delete buffer

cnoremap w!! w !sudo tee % > /dev/null

" CtrlP
let g:ctrlp_user_command = [
	\ '.git', 'cd %s && git ls-files . -co --exclude-standard',
	\ 'find %s -type f'
	\ ]

" MISC
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftwidth=2
set shiftround 
set smarttab
set noerrorbells
set autowrite

