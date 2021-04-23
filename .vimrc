set number numberwidth=2    "set numbers with good spacing

syntax on                   "syntax highlighting

"searching 
set ignorecase              "don't match by cases when searching
set smartcase               "if search begins with capital don't ignorecase


"set tab size, replace with spaces, backspace with tab"
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
 
"allow filetype specific handling"
filetype plugin indent on

"disallow compatibility to old vim
set nocompatible

" no wrapping
set nowrap

" highlight and search incrementally
set hlsearch incsearch

"fg foreground, bg background"
hi Search cterm=NONE ctermfg=Black ctermbg=LightBlue

" https://github.com/sainnhe/everforest
set background=dark
colorscheme everforest

"This unsets the "last search pattern" register by hitting return
"The highlighted search pattern is unhighlighted.
nnoremap <CR> :noh<CR><CR> 

"window movement
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"sp and vsp config
set splitbelow splitright

"show file name
set title

set noshowmode              "remove vim status line


"vim-go configurations"
"show the name of each failed test before the errors and logs"
let g:go_test_show_name = 1


"SCVim configurations"
let g:sclangTerm = "x-terminal-emulator -e $SHELL -ic"
let g:scFlash = 1
let g:scTerminalBuffer = "on"


"vim-clang-format configurations"
let g:clang_format#style_options = {
    \ "BasedOnStyle": "Google",
    \ "IndentWidth": 2,
    \ "AlignConsecutiveAssignments": "true",
    \ "AlignConsecutiveDeclarations": "true",
    \ "SpacesInSquareBrackets": "true"}

let g:clang_format#auto_format = 1


