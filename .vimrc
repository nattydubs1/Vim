" ────────────────────────────────────────────────────────────────
" MISS DRACULA VIMRC 
" ────────────────────────────────────────────────────────────────

" --- General Settings ---
set nocompatible              " Use Vim defaults instead of Vi
set fileencoding=utf-8
set mouse=a                   " Enable mouse (useful for scrolling)
set updatetime=250
set timeoutlen=300
set clipboard=unnamedplus     " Sync with system clipboard (Kitty)
set noswapfile                " Paranoia: Don't leave secret data in .swp files
set nobackup                  " Don't create backup files
set nowritebackup

" --- Visuals ---
syntax on
filetype plugin indent on
set termguicolors             " True color support
set number                    " Show line numbers
set relativenumber            " Relative numbers 
set cursorline                " Highlight the line you are on
set scrolloff=8               " Keep 8 lines visible when scrolling
set laststatus=2              " Always show status bar
set statusline=%f\ %m%=%l/%L  " Simple, clean status bar

" --- Colorscheme (Dracula) ---
" Make sure you ran the 'wget' command 
silent! colorscheme dracula
set background=dark

" --- Tab & Indent (Standard 4-space) ---
set tabstop=4
set shiftwidth=4
set expandtab                 " Spaces > Tabs
set autoindent
set smartindent

" --- Search ---
set ignorecase
set smartcase
set incsearch
set nohlsearch                " Don't leave yellow blobs after searching

" ────────────────────────────────────────────────────────────────
" KEYMAPS (The Essentials)
" ────────────────────────────────────────────────────────────────
let mapleader = " "

" Exit Insert Mode fast 
inoremap jk <Esc>
inoremap kj <Esc>

" Save and Quit 
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-q> :q<CR>

" File Explorer (Lexplore)
nnoremap <leader>e :Lex<CR>
let g:netrw_banner = 0        " Remove the ugly banner
let g:netrw_liststyle = 3     " Tree view
let g:netrw_winsize = 20

" Move between splits easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Clear search highlights with Esc
nnoremap <Esc> :noh<CR>

" Center screen when jumping
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Color Steroids
if &term =~ '256color'
  set t_ut=
endif
" Ensure pinks and purples pop in Kitty
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Disable the .viminfo file entirely (No trails)
set viminfo=
