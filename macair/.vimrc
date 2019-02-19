set nocompatible  " be iMproved
filetype off

set wrap
set number

set rtp+=~/.vim/bundle/Vundle.vim

set laststatus=2

set t_Co=256

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on
let g:python_host_prog='/Library/Frameworks/Python.framework/Versions/2.7/bin/python'
let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.6/bin/python3'
