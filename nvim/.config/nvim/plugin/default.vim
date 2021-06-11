filetype plugin indent on 	" add filetype, plugin, and indent support
" syntax on
set background=light
set bs=2
set clipboard=unnamedplus,unnamed
set cursorline
set expandtab
set foldlevel=20
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set hidden  			" hide buffer instead of closing when open another file
set hlsearch
set ignorecase 			" ignore 
set noshowmode
set noswapfile                    " No swapfiles period.
" set number                  " Line numbers on
" set relativenumber          " Relative numbers on
set shortmess=FIca "do not show message on intro and insert completion
set splitright                  " open new split at right
set wildcharm=<tab>  		" use tab to autocomplete vim command 
set wildmode=longest,list,full 
set laststatus=2
set wildignore+=*/node_modules/*,*/ios/*,*/android/*
set wildmenu
syntax off
" set termguicolors           " Enable GUI colors for the terminal to get truecolor

set background=light
colorscheme PaperColor


vnoremap p "_dP
tnoremap <Esc> <C-\><C-n>
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
cnoremap <Leader>fp <C-R>=expand("%:p:h")<CR>
tnoremap <Leader>fp <C-R>=expand("%:p:h")<CR>
inoremap <Leader>fp <C-R>=expand("%:p:h")<CR>
cnoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
tnoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
inoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
nnoremap <leader>yp :let @+=expand("%:p")<cr>
nnoremap <leader>yn :let @+=expand("%:t:r")<cr>
nnoremap <leader>yd :let @+=expand("%:p:h")<cr>
nnoremap <silent> <leader>yl :let @+=expand("%:.") . ":" . line(".")<cr>
nnoremap <leader>yp :let @+=expand("%:p")<cr>

" Quick Find
nnoremap <leader>F :Files<cr>
nnoremap <leader>f :find <C-R>=expand("%:p:h")<cr>/*

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

" Custom Boomarks
nnoremap <leader>1 :e $XDG_CACHE_HOME/pb.md<cr>
" custom fzf function to open temporary file 
nnoremap <silent> <leader>ma :!grep -Fxq %:p $XDG_CACHE_HOME/bf \|\| echo %:p >> $XDG_CACHE_HOME/bf<cr>
nnoremap <leader>ml :call fzf#run({'source': 'cat $XDG_CACHE_HOME/bf', 'sink': 'e'})<cr>

" Clipboard
let g:clipboard = {
      \   'name': 'macOS-clipboard',
      \   'copy': {
      \      '+': 'pbcopy',
      \      '*': 'pbcopy',
      \    },
      \   'paste': {
      \      '+': 'pbpaste',
      \      '*': 'pbpaste',
      \   },
      \   'cache_enabled': 0,
      \ }


let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

vnoremap ` xi``<esc>hp
vnoremap * xi**<esc>hp
