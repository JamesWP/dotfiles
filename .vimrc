execute pathogen#infect()

syntax on
set background=dark
colorscheme molokai
let mapleader="§"
set visualbell
set noerrorbells
set ttyfast

set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

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

" fix indent outdent with selection
vnoremap < <gv
vnoremap > >gv

set encoding=utf-8
set fileencoding=utf-8

" YCM config
let g:ycm_server_python_interpreter='/usr/bin/python2.7'
let g:ycm_auto_trigger = 0
" to disable preview: set completeopt-=preview

" clang format config
if has('python')
  map <C-I> :pyf /usr/share/clang/clang-format.py<cr>
elseif has('python3')
  map <C-I> :py3f /usr/share/clang/clang-format.py<cr>
endif
