" Pathogen configuration
call pathogen#infect()
call pathogen#helptags()

" Syntax
syntax on

" Filetypes
filetype plugin on
filetype indent on

" Load custom settings
source ~/.vim/startup/mappings.vim

" VIM settings
set number
