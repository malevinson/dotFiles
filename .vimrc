execute pathogen#infect()
syntax on
filetype plugin indent on
set clipboard=unnamed
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>
set hlsearch

" ----------------------------
" General usability
" ----------------------------
set number                      " show absolute line numbers
set relativenumber              " relative numbers for quick movement
set hidden                      " allow switching buffers without saving
set mouse=a                     " enable mouse support
set nowrap                      " don't wrap long lines by default
set scrolloff=3                 " keep a few lines visible above/below cursor
set clipboard+=unnamedplus      " use system clipboard when available

" ----------------------------
" Indentation & tabs
" ----------------------------
set expandtab                   " insert spaces instead of tabs
set shiftwidth=2                " indentation width
set tabstop=2                   " number of spaces a <Tab> counts for
set smartindent                 " smart autoindenting on new lines

" ----------------------------
" Search
" ----------------------------
set ignorecase                  " case-insensitive search...
set smartcase                   " ...unless search has capitals
set incsearch                   " show matches while typing
set nohlsearch                  " don't persist highlights; use mapping to toggle

" Quickly clear search highlight
nnoremap <silent> <leader><space> :nohlsearch<cr>

" ----------------------------
" UI feedback
" ----------------------------
set showcmd                     " show typed command in status line
set ruler                       " show cursor position
set wildmenu                    " enhanced command-line completion
set wildmode=longest:full,full
set laststatus=2                " always show status line
set showmatch                   " briefly jump to matching bracket
set colorcolumn=80              " guide for 80‑char width

" ----------------------------
" Convenience mappings
" ----------------------------
let mapleader=","               " set leader key to comma

" Fast saving and quitting
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Move lines up/down
nnoremap <A-j> :m .+1<cr>==
nnoremap <A-k> :m .-2<cr>==
vnoremap <A-j> :m '>+1<cr>gv=gv
vnoremap <A-k> :m '<-2<cr>gv=gv