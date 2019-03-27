if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif


call plug#begin('/home/richard/.vim/plugged')

"declare the list of plugins"
Plug 'yggdroot/indentline'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '/home/richard/.fzf', 'do': './install --all'}
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'itchyny/lightline.vim'

call plug#end()

"""""""""""""""""""""""""""ycm options""""""""""""""""""""""""""

".ycm_extra_conf.py location
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1

"set completeopt-=preview
command! Goto YcmCompleter GoToDefinition
let g:ycm_min_num_of_chars_for_completion=1

nnoremap f :tab split \| YcmCompleter GoToDefinition

""""""""""""""""""""""""""""""end ycm options"""""""""""""""""""""""""""

"lightline
set laststatus=2
set noshowmode

set nocompatible

" copy an paste to other programs
vnoremap <C-c> "+y
map <C-v> "+P

"change the map leader to comma 
let mapleader=","

" show line numbers on side
set number 

"set : to ;"
nnoremap ; :
vnoremap ; :

"faster movement
nnoremap J 25j
vnoremap J 25j

nnoremap K 25k
vnoremap K 25k

"show colorscheme
colorscheme elflord

"start searching when i type
set incsearch

"search highlighting
set hlsearch

"colors for dark backgrounds
set background=dark

"syntax highlighting
syntax on

"highlight current line number, make nums grey
highlight LineNr ctermfg=LightGray

"highlight current cursor line
" todo figure out how colors work
highlight CursorLine cterm=NONE ctermbg=237
set cursorline

"auto indent the next line to match the current one
set autoindent

"indent based off of the language
set smartindent

"shift by four spaces
set shiftwidth=4

"a tab is displayed asfour spaces
set tabstop=4

"a tab is worth four spaces when editing
set softtabstop=4

"replace tabs with spaces
set expandtab

" load indent files based on filetype
filetype indent on

"ignore case unless caps are present
set smartcase 

"allow mouse usage
set mouse=a

"remap to dd to black hole  register
noremap dd "_dd
vnoremap dd "_dd

"go to middle of line
nnoremap gm :call cursor(0, len(getline('.')) / 2)<cr>

"indent line color 
let g:indentLine_color_term=15
