execute pathogen#infect()

syntax on
set background=dark
colorscheme molokai
let mapleader="§"
set mouse=a
set visualbell
set noerrorbells
set ttyfast

" tab and pane controls
nnoremap <leader>q :tabprevious<cr>
nnoremap <leader>w :tabnext<cr>
nnoremap <leader>e :tabedit<cr>
nnoremap <leader>a :vsplit<cr>
nnoremap <leader>s :split<cr>

set cc=81
set expandtab
set tabstop=2

" custom bindings
" split line
nnoremap K i<cr><esc>

set encoding=utf-8
set fileencoding=utf-8

" YCM config
let g:ycm_server_python_interpreter='/usr/bin/python2.7'
let g:ycm_auto_trigger = 0
" to disable preview: set completeopt-=preview

" clang format config
map <C-I> :pyf /usr/share/clang/clang-format.py<cr>
