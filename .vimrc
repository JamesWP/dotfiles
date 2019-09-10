execute pathogen#infect()

syntax on
set background=dark
colorscheme molokai
let mapleader="§"
nmap ` §
set visualbell
set noerrorbells
set ttyfast

set expandtab
set tabstop=2
set shiftwidth=2
set complete-=i
set mouse=a
set modeline

" prevent issue with using mouse past 233rd col in vim
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

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

" switch between .h and .cpp
map <C-H> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" toggle highlight for search with ctrl /
nnoremap <C-_> :set hlsearch! hlsearch?<CR>

" clang format config
if has('python')
  "map <C-I> :pyf /usr/share/clang/clang-format-5.0/clang-format.py<cr>
  map <C-I> :pyf /opt/bb/share/bde-format/bde-format.py<cr>
elseif has('python3')
  "map <C-I> :py3f /usr/share/clang/clang-format-5.0/clang-format.py<cr>
  map <C-I> :py3f /opt/bb/share/bde-format/bde-format.py<cr>
endif

" ycm config
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

let g:clangd#clangd_executable = '/home/jpeach6/gits/llvm-git/bld/bin/clangd'

" bde format
let g:bde_format_path='/opt/bb/bin/bde-format'

autocmd FileType h,c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e
