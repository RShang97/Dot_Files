call plug#begin('/home/rshang97/.vim/plugged')

"declare the list of plugins"
Plug 'scrooloose/syntastic'
Plug 'yggdroot/indentline'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '/home/rshang97/.fzf', 'do': './install --all'}
Plug 'vim-scripts/auto-pairs-gentle'

" typescript syntax
Plug 'leafgarland/typescript-vim'
call plug#end()

let mapleader=","
set number

"set : to ;"
nnoremap ; :
vnoremap ; :

"set J to Control D 
nnoremap J 25j
vnoremap J 25j

nnoremap K 25k
vnoremap K 25k

colorscheme elflord

set showmatch
set incsearch
set hlsearch
set background=dark

highlight LineNr ctermfg=grey

set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=0 
set expandtab
set smartindent


"visually say when things go wrong"
set visualbell

set cursorline

filetype indent on

nnoremap gV `[v`]

set ignorecase
set smartcase 

set mouse=a

"remap to dd to black hole  register" 
noremap dd "_dd
vnoremap dd "_dd

nnoremap gm :call cursor(0, len(getline('.')) / 2)<cr>

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

set completeopt-=preview
command! Goto YcmCompleter GoToDefinition
let g:ycm_min_num_of_chars_for_completion = 1

nnoremap f :tab split \| YcmCompleter GoToDefinition
