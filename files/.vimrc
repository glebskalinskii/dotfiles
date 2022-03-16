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
" Plugin 'othree/html5.vim'
" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'pangloss/vim-javascript'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'othree/javascript-libraries-syntax.vim'
" Plugin 'mxw/vim-jsx'
" Plugin 'digitaltoad/vim-jade'
Plugin 'sheerun/vim-polyglot'
" Plugin 'HerringtonDarkholme/yats.vim'

" ---Git---
Plugin 'tpope/vim-fugitive'

" ---Linting/Lang tools---
Plugin 'dense-analysis/ale'

Plugin 'itchyny/lightline.vim'

Plugin 'ap/vim-css-color'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'

Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'

Plugin 'Raimondi/delimitMate' "automatically add the closing quote, bracket ...
Plugin 'tomtom/tcomment_vim'
Plugin 'terryma/vim-multiple-cursors'


"--------------------------------------------------------------

call vundle#end()            " required
filetype plugin indent on    " required

"--------------------------------------------------------------
" ALE
" -------------------------------------------------------------
" let b:ale_fixers = ['prettier']
let g:ale_fixers = {
      \   'javascript': ['prettier', 'eslint'],
      \   'typescript': ['prettier', 'eslint'],
      \   'typescriptreact': ['prettier', 'eslint'],
      \   'css': ['prettier'],
      \}
let g:ale_fix_on_save = 1

"--------------------------------------------------------------
" EMMET
" -------------------------------------------------------------
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-E>'
autocmd FileType html,js,jsx,ts,tsx,css,scss EmmetInstall

"--------------------------------------------------------------
" MULTI CURSOR
"--------------------------------------------------------------
" pressing in Insert mode will not quit and delete 
" all existing cursors.
let g:multi_cursor_exit_from_insert_mode=0

"--------------------------------------------------------------
" CtrlP
"--------------------------------------------------------------
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|yalc|next)|(node_modules|build|dist)$'
let g:ctrlp_show_hidden = 1

"--------------------------------------------------------------
" VIM ACK
"--------------------------------------------------------------
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
nnoremap <Leader>A :Ack! <C-r><C-w><CR>

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
set tabstop=2
" size of an "indent"
set shiftwidth=2
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2
" Expand TABs to spaces
set expandtab

"--------------------------------------------------------------
" DIFFERENT
" -------------------------------------------------------------

" swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" ignore files (CtrlP)
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" turn syntax support on
syntax on

" Show file options above the command line using :vsp
set wildmenu

" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=.cache/*
set wildignore+=node_modules/*,bower_components/*

" turn on line number
set number

" highlight current line number
set cursorline
hi clear CursorLine " removes line highliting leaving just line number

" make backspace work with previously inserted text
set backspace=2

" copy the indentation from the previous line
set autoindent
set smartindent

" nowrap
set nowrap

" refresh file if changed outside of vim
set autoread
au FocusGained,BufEnter * :silent! !

" search selected text
" http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap // y/<C-R>"<CR>"
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

"--------------------------------------------------------------
" Different
"--------------------------------------------------------------




"==============================================================
" SCRIPTS
"==============================================================

" Open multiple lines (insert empty lines) before or after current line,
" and position cursor in the new space, with at least one blank line
" before and after the cursor.
" http://vim.wikia.com/wiki/Insert_multiple_lines
function! OpenLines(nrlines, dir)
  let nrlines = a:nrlines < 2 ? 2 : a:nrlines
  let start = line('.') + a:dir
  call append(start, repeat([''], nrlines))
  if a:dir < 0
    execute "normal! ". nrlines. "k"
  else
    execute "normal! ". nrlines. "j"
  endif
endfunction
" Mappings to open multiple lines and enter insert mode.
nnoremap <Leader>o :<C-u>call OpenLines(v:count, 0)<CR>S
nnoremap <Leader>O :<C-u>call OpenLines(v:count, -1)<CR>S


"--------------------------------------------------------------
" QUICK FIX WINDOW (mostly vim.ack)
"--------------------------------------------------------------
" Return 1 if current window is the QuickFix window.
function! IsQuickFixWin()
    if &buftype == "quickfix"
        " This is either a QuickFix window or a Location List window.
        " Try to open a location list; if this window *is* a location list,
        " then this will succeed and the focus will stay on this window.
        " If this is a QuickFix window, there will be an exception and the
        " focus will stay on this window.
        "
        " Unfortunately, the above technique broke with newer versions of Vim
        " ls lopen was considered to be editing the buffer.  Instead, we'll use
        " the new win_getid() to grab the window id and then use that to check
        " the window information to see if it's a quickfix window (it does
        " distinguish between quickfix and loclist).
        if exists('*win_getid')
            let info = getwininfo(win_getid())
            if info[0]['quickfix']
                return 1
            else
                return 0
            endif
        else
            try
                noautocmd lopen
            catch /E776:/
                " This was a QuickFix window.
                return 1
            endtry
        endif
    endif
    return 0
endfunction

" Toggle QuickFix window.
function! QuickFixWinToggle()
    let numOpenWindows = winnr("$")
    if IsQuickFixWin()
        " Move to previous window before closing QuickFix window.
        wincmd p
    endif
    cclose
    if numOpenWindows == winnr("$")
        " Window was already closed, so open it.
        Copen
    endif
endfunction
nnoremap <silent> <C-q><C-q> :call QuickFixWinToggle()<CR>
command! -bar QuickFixWinToggle :call QuickFixWinToggle()
