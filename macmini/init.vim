set number
set expandtab
set autoindent
set softtabstop=4
set tabstop=4

set history=1000

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-markdown'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tmhedberg/SimpylFold'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mhinz/vim-startify'

call plug#end()

let g:python_host_prog = '/Users/bmwant/.pyenv/versions/2.7.15/bin/python'
