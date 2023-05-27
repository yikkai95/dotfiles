filetype plugin indent on
set background=light
set bs=2
set clipboard=unnamedplus,unnamed
set cursorline
set expandtab
set foldlevel=20
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set hidden
set hlsearch
set ignorecase
set noshowmode
set noswapfile
set shortmess=FIca
set splitright
set wildcharm=<tab>
set wildmode=longest,list,full 
set laststatus=2
set wildignore+=*/node_modules/*,*/ios/*,*/android/*
set wildmenu
set signcolumn=no
set mouse=a
syntax off


set background=light
"colorscheme PaperColor


vnoremap p "_dP
tnoremap <Esc><Esc> <C-\><C-n>
nnoremap <leader>rw :%s/\s\+$//e<cr>
nnoremap <leader>rs :s/\<./\u&/g<cr>
vnoremap [[ xi[]<esc>hp

" Quickfix
augroup user_events
  autocmd! *
augroup END
autocmd user_events QuickFixCmdPost [^l]* cwindow
autocmd user_events QuickFixCmdPost    l* lwindow

" Window
autocmd VimResized * wincmd =

" Self-explanatory convenience mappings
nnoremap ! :!
vnoremap <backspace> %
nnoremap <backspace> %
nnoremap ' `
vnoremap ; :
vnoremap : ;
nnoremap ; :
nnoremap : ;

" Linewise mapping
nnoremap gh g^
nnoremap gl g$
vnoremap gh g^
vnoremap gl g$
nnoremap <leader>j 5j
nnoremap <leader>k 5k
vnoremap <leader>j 5j
vnoremap <leader>k 5k

" File Path Shortcuts
"cnoremap <Leader>fp <C-R>=expand("%:p:h")<CR>
"tnoremap <Leader>fp <C-R>=expand("%:p:h")<CR>
" inoremap <Leader>fp <C-R>=expand("%:p:h")<CR>
"cnoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
"tnoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
"inoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
nnoremap <leader>yp :let @+=expand("%:p")<cr>
nnoremap <leader>yn :let @+=expand("%:t:r")<cr>
nnoremap <leader>yd :let @+=expand("%:p:h")<cr>
nnoremap <silent> <leader>yl :let @+=expand("%:.") . ":" . line(".")<cr>
nnoremap <leader>yp :let @+=expand("%:p")<cr>

" Quick Find
nnoremap <leader>F :Files<cr>
nnoremap <leader>f :find <C-R>=expand("%:p:h")<cr>/

" Lines
nnoremap <leader>L :BLines<cr>

" Buffers
nnoremap <leader>B :Buffers<cr>
nnoremap <leader>b :buffer *

" split
nnoremap sg :vsplit<cr>
nnoremap se :split<cr>

" Greps
nnoremap <leader>g :silent lgrep<Space>

" Command Line
cnoremap <C-h> <BS>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Delete>

" Maps {{{
" inoremap d <esc>
" vnoremap fd <esc>
nnoremap <silent> <esc> :noh<cr>
" }}}


" Move lines
noremap  <M-j> :m+<CR>
noremap  <M-k> :m-2<CR>
vnoremap <M-k> :m-2<CR>gv=gv
vnoremap <M-j> :m'>+<CR>gv=gv

let g:netrw_browsex_viewer="xdg-open"

vnoremap ` xi``<esc>hp
vnoremap * xi**<esc>hp

nnoremap <leader>e <cmd>NnnPicker %<CR>
nnoremap <leader>E <cmd>NnnPicker<CR>
