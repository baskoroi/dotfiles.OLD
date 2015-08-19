" Initial settings
set nocompatible			" get rid of Vi compability mode.
filetype off				" required

" Vundle settings and plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Core plugins
Plugin 'VundleVim/Vundle.vim'

" vim main plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

" Filetypes
filetype plugin on
filetype indent on

" Syntax
syntax on

" Load custom settings
source ~/.vim/startup/mappings.vim

" VIM settings
set relativenumber
set tabstop=4
set softtabstop=4
set expandtab

" Powerline settings
set laststatus=2
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_symbols.space = "\ua0"

" VIM UI
set cursorline
colorscheme candyman 
