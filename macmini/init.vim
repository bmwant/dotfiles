set number
set expandtab
set autoindent
set softtabstop=4
set tabstop=4
set autoread
set showmatch           " Show matching brackets
set splitbelow          " Horizontal split below current
set splitright          " Vertical split to the right
set foldlevel=99        " Do not fold automatically
set colorcolumn=80      " Display vertical stop line

filetype plugin indent on

set history=1000

autocmd FileType sh setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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
Plug 'wakatime/vim-wakatime'

call plug#end()

let g:python_host_prog = '/Users/bmwant/.pyenv/versions/2.7.15/bin/python'
let g:python3_host_prog = '/Users/bmwant/.pyenv/versions/3.6.8/bin/python'

map <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$']

" SimpylFold
let g:SimpylFold_fold_docstring=0
let g:SimpylFold_fold_import=0
