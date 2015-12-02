"Pathogen
filetype off
call pathogen#infect()
filetype plugin indent on

set nocompatible

set modelines=0

"Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set smartindent

"Sane defaults
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

"Font and toolbar hiding
if has("gui_running")
  " Set a nicer font.
  set guifont=Anonymous_Pro:h10:cDEFAULT
  " Hide the toolbar.
  set guioptions-=T
endif

"Solarized dark
syntax enable
set background=dark
colorscheme solarized

let mapleader = ","

"Search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"Unmap arrow keys and make j and k move based on screen lines not file lines
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"Wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"Disable help screen shortcut
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"Open .vimrc in split window
nnoremap <leader>ev <C-w><C-v><C-l>:e ~\vimfiles\.vimrc<cr>

"Use jj to escape to normal mode
inoremap jj <ESC>

"Working with splits
"Open v-split and switch to it
nnoremap <leader>w <C-w>v<C-w>l

"Remap default split nav keys to remove C-w prefix
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Status line
set statusline=%F%m%r%h%w\ 
set statusline+=%{fugitive#statusline()}\  

"Nerdtree
map <leader>n :NERDTreeToggle<CR>

nnoremap <leader>b :buffers<CR>:buffer<Space>
