filetype plugin indent on  " detect plugin filetypes
syntax enable              " syntax highlighting

call plug#begin(stdpath('data') . '/plugged')

Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }

" Initialize plugin system
call plug#end()

" the statusline is made anew
" I'm not sure what this does
function! s:set_sclang_statusline()
  setlocal stl=
  setlocal stl+=%f
  setlocal stl+=%=
  setlocal stl+=%(%l,%c%)
  setlocal stl+=\ \|
  setlocal stl+=%26.26{scnvim#statusline#server_status()}
endfunction

augroup scnvim_stl
  autocmd!
  autocmd FileType supercollider call <SID>set_sclang_statusline()
augroup END

" comment out stuff with this in scnvim
autocmd FileType supercollider setlocal commentstring=//%s

" toggle colours in the post_window
let g:scnvim_postwin_syntax_hl = 0

" searching
set ignorecase                      " ignore case in search patterns
set smartcase                       " overrides 'ignorecase' if search pattern contains an upper char
set showmatch                       " highlight search matches while typing

" window movement
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" scnvim
let g:scnvim_postwin_size = 60      " based on my 27" monitor in full screen

" ctrl-p to clear post window
nmap <C-p> <Plug>(scnvim-postwindow-clear) 
