" INITIAL SETTINGS {{{

" set nocompatible			" get rid of Vi compability mode.
filetype off				" required

" }}}

" PLUGIN SETTINGS (Vundle - uncomment when needed) {{{

" Vundle settings and plugins
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" Core plugins
"Plugin 'VundleVim/Vundle.vim'

" vim main plugins 
"Plugin 'flazz/vim-colorschemes'
"Plugin 'bling/vim-airline'
"Plugin 'kien/ctrlp.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'rking/ag.vim'
"Plugin 'sjl/gundo.vim'
"Plugin 'terryma/vim-multiple-cursors'

" language vundles
"Plugin 'scrooloose/syntastic'
"Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'tpope/vim-commentary'

"call vundle#end()

"filetype plugin indent on

" }}}

" PLUGIN SETTINGS (vim-plug) {{{

call plug#begin('~/.vim/bundle')

Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'sjl/gundo.vim'
Plug 'terryma/vim-multiple-cursors'

" language plugins
Plug 'benekastah/neomake'
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-commentary'

call plug#end()

" }}}

" VIM SETTINGS {{{

" Filetypes
filetype plugin on
filetype indent on

" Syntax
syntax on
autocmd BufNewFile,BufRead *.md     set syntax=markdown

" General settings
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" UI settings 
set cursorline
colorscheme badwolf
set wildmenu
set lazyredraw
set showmatch

" Searching
set incsearch
set hlsearch

" Folding
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Abbreviations (and typo fixes)
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

" }}}

" vim-airline SETTINGS {{{

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

" }}}

" ctrl+p SETTINGS {{{

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0

" }}}

" ag.vim SETTINGS {{{

let g:ag_working_path_mode="r"

" }}}

" EMMET SETTINGS {{{

let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" }}}

" LANGUAGE SETTINGS (including plugins / vundles) {{{

let g:javascript_enable_domhtmlcss = 1

" }}}

" CUSTOM SETTINGS {{{

source ~/.vim/startup/mappings.vim
source ~/.vim/startup/grep-operator.vim

" }}}
