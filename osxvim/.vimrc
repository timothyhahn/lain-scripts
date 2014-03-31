filetype off
execute pathogen#infect()
syntax on
filetype plugin indent on
set nu
set background=light
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
colorscheme solarized
set pastetoggle=<F2>
set laststatus=2 
let g:pymode = 1
let g:pymode_indent = 1
let g:staircase_use_sbt = 1
"let g:staircase_default_terminal= /Applications/iTerm.app/Contents/MacOS/iTerm
set expandtab
set tabstop=4
set shiftwidth=4
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let mapleader = ","
map <leader><leader> :w<cr>
map <leader>n :NERDTreeToggle<cr>
map <leader>m :! md2pdf %<cr>
map <leader>v :vs<cr>
map <leader>h :split<cr>
map <leader>j :Java<cr>
map <leader>o :JavaImportOrganize<cr>
map <leader>i :JavaImport<cr>

let g:SuperTabDefaultCompletionType = 'context'

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au BufRead,BufNewFile *.md set filetype=markdown

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
set wildignore=*.o,*~,*.pyc,*.swp,*.pyo,*.class,*.so
inoremap jk <esc>
inoremap kj <esc>
set wrap
set linebreak
" note trailing space at end of next line
"et &showbreak = ''
"set list!
"set listchars=trail:>
