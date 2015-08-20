" ================
" INITIAL SETTINGS
" ================

set nocompatible			" get rid of Vi compability mode.
filetype off				" required

" ===============
" PLUGIN SETTINGS
" ===============

" Vundle settings and plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Core plugins
Plugin 'VundleVim/Vundle.vim'

" vim main plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'sjl/gundo.vim'

call vundle#end()

filetype plugin indent on

" ============
" VIM SETTINGS
" ============

" Filetypes
filetype plugin on
filetype indent on

" Syntax
syntax on

" General settings
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" UI settings 
set cursorline
colorscheme candyman 
set wildmenu
set lazyredraw
set showmatch

" Searching
set incsearch
set hlsearch

" Abbreviations (and typo fixes)
:iabbrev bsk Baskoro Indrayana
:iabbrev @@ baskoroindrayana@outlook.com
:iabbrev ture true
:iabbrev flase false
:iabbrev falase false

" Backup
set undodir=~/.vim/tmp/undo//
" set backupdir=~/.vim/tmp/backup//
" set directory=~/.vim/tmp/swap//
" set backupskip=/tmp/*,/private/tmp/*
" set backup
" set writebackup
" set noswapfile

" Persist (g)undo tree between sessions
set undofile
set history=100
set undolevels=100

" ================
" AIRLINE SETTINGS
" ================

set laststatus=2                            " to display the Airline
let g:airline_powerline_fonts = 1           " patched fonts

" To show the powerline symbols properly
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_symbols.space = "\ua0"

set fillchars+=stl:\ ,stlnc:\               " Fix Airline from showing ^^^^^^^^^
let g:airline_theme = 'powerlineish'        " Change theme for Airline

" Configure list of buffers
let g:airline#extensions#tabline#enabled = 1

" Hide modified buffers
set hidden

" ===============
" CTRL P SETTINGS
" ===============

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0

" ===============
" ag.vim SETTINGS
" ===============

let g:ag_working_path_mode="r"

" ===============
" CUSTOM SETTINGS
" ===============

source ~/.vim/startup/mappings.vim
