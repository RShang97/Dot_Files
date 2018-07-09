call plug#begin('~/.vim/plugged')

"declare the list of plugins"
Plug 'scrooloose/syntastic'
Plug 'yggdroot/indentline'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

call plug#end()


let mapleader=","
set number

"set : to ;"
nnoremap ; :
vnoremap ; :


colorscheme elflord

set showmatch
set incsearch
set hlsearch
set background=dark

highlight LineNr ctermfg=grey

set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=0 noexpandtab
set smartindent


" Double-j
inoremap jk <Esc>"

"sets command window height to two inches"
set cmdheight=2


"visually say when things go wrong"
set visualbell

set cursorline

filetype indent on

nnoremap gV `[v`]

set ignorecase
set smartcase 

set mouse=a


"remap to dd to black hole  register" 
"
noremap dd "_dd
vnoremap dd "_dd


inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
      return "\<Right>"
       else
            return a:char
             endif
             endf

             function CloseBracket()
              if match(getline(line('.') + 1), '\s*}') < 0
                   return "\<CR>}"
                    else
                         return "\<Esc>j0f}a"
                          endif
                          endf

                          function QuoteDelim(char)
                           let line = getline('.')
                            let col = col('.')
                             if line[col - 2] == "\\"
                                  "Inserting a quoted quotation mark into the string
                                   return a:char
                                    elseif line[col - 1] == a:char
                                     "Escaping out of the string
                                      return "\<Right>"
                                       else
                                        "Starting a string
                                         return a:char.a:char."\<Esc>i"
                                          endif
                                          endf

