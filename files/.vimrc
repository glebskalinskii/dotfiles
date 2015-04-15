"--------------------------------------------------------------
" VUNDLE - plugin manager
"--------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"--------------------------------------------------------------
" PLUGINS
"--------------------------------------------------------------

" ---Theme---
Plugin 'altercation/vim-colors-solarized'

" ---Syntax---
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'

"automatically add the closing quote, bracket ... 
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/tcomment_vim'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'pangloss/vim-javascript'

"--------------------------------------------------------------

call vundle#end()            " required
filetype plugin indent on    " required

"--------------------------------------------------------------
" EMMET
" -------------------------------------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,php,css,scss EmmetInstall
let g:user_emmet_leader_key='<C-E>'

"==============================================================

"--------------------------------------------------------------
" COLOR SCHEME
"--------------------------------------------------------------
syntax enable
set t_Co=256
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256 
colorscheme solarized

"--------------------------------------------------------------
" TABS
" -------------------------------------------------------------
" size of a hard tabstop
set tabstop=4
" size of an "indent"
set shiftwidth=4
" a combination of spaces and tabs are used to simulate tab stops at a width
"  " other than the (hard)tabstop
set softtabstop=4

"--------------------------------------------------------------
" DIFFERENT
" -------------------------------------------------------------

" turn syntax support on
syntax on

" turn on line number
set number

" make backspace work with previously inserted text
set backspace=2

" copy the indentation from the previous line
set autoindent

" nowrap
set nowrap

" refresh file if changed outside of vim
set autoread

"==============================================================


"==============================================================
" MAPPINGS
"==============================================================

"--------------------------------------------------------------
"REMAP ESC
"--------------------------------------------------------------
ino jk <esc>
ino kj <esc>
"--------------------------------------------------------------
"EASY MOTION
"--------------------------------------------------------------
nmap s <Plug>(easymotion-s)
"--------------------------------------------------------------
" NERDTree
" -------------------------------------------------------------
nmap <silent> <C-D> :NERDTreeToggle<CR>

" split current line, mostly for { }
imap <C-c> <CR><Esc>O
