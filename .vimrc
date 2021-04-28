""" Basic Setup

"allow filetype specific handling"
filetype plugin indent on

"disallow compatibility to old vim
set nocompatible

"sp and vsp config
set splitbelow splitright

" stop undesired movements
noremap <Space> <Nop>

" leader 
let mapleader="\<Space>"

" do not close buffer when left. I'll manually close them
set hidden


""" Aesthetics

" https://github.com/sainnhe/everforest
set background=dark
colorscheme everforest

" set numbers with good spacing
set number numberwidth=3

" syntax highlighting
syntax on                   

" set tab size, replace with spaces, backspace with tab"
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
 
" no wrapping
set nowrap

" show file name
set title

" remove vim status line
" does this do anything?
set noshowmode              


""" Searching 

" don't match by cases when searching
set ignorecase       

" if search begins with capital don't ignorecase
set smartcase         

" highlight and search incrementally
set hlsearch incsearch

"fg foreground, bg background"
hi Search cterm=NONE ctermfg=Black ctermbg=LightBlue


""" Usability

" more sane windows splits.
" adjust tmux to match
nnoremap <leader><Bar> :vsplit<cr>
nnoremap <leader>- :split<cr>

"This unsets the "last search pattern" register by hitting return
"The highlighted search pattern is unhighlighted.
nnoremap <CR> :noh<CR><CR> 

" Create new Lines without Insert, small
" fixes are placed in the autocommands 
nnoremap <CR> o<Esc>

"window movement
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" window resize with arrow key
nnoremap <silent> <right> :vertical resize +5<cr>
nnoremap <silent> <left>  :vertical resize -5<cr>
nnoremap <silent> <up>    :resize +5<cr>
nnoremap <silent> <down>  :resize -5<cr>

" buffer switching
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


""" Airline
" airline status line
set laststatus=2

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" airline buffer list at the top
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#tabline#buffers_label = 'b' "airline defaults to 'buffers'
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


""" vim-go configurations"
"show the name of each failed test before the errors and logs"
let g:go_test_show_name = 1
" some tests run long
let g:go_test_timeout = 30
"let g:go_highlight_string_spellcheck = 1


""" SCVim configurations"
let g:sclangTerm = "x-terminal-emulator -e $SHELL -ic"
let g:scFlash = 1
let g:scTerminalBuffer = "on"


""" vim-clang-format configurations"
let g:clang_format#style_options = {
    \ "BasedOnStyle": "Google",
    \ "IndentWidth": 2,
    \ "AlignConsecutiveAssignments": "true",
    \ "AlignConsecutiveDeclarations": "true",
    \ "SpacesInSquareBrackets": "true"}

let g:clang_format#auto_format = 1

" NerdTree
nnoremap <leader>ne :NERDTreeToggle<cr>




