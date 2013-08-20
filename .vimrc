execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme molokai
let g:vim_markdown_folding_disabled=1
let mapleader = ","


nmap ; :
nnoremap <Leader>, :w<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>o :!md2pdf %<CR>


set hlsearch
set incsearch
set ignorecase
set smartcase
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set number
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType clj setlocal shiftwidth=2 tabstop=2

let @a=':%s/^\a/\=char2nr(submatch(0))/'

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
