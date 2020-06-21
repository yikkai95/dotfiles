set undodir=$XDG_DATA_HOME/vim/undo
set directory=$XDG_DATA_HOME/vim/swap
set backupdir=$XDG_DATA_HOME/vim/backup
set viewdir=$XDG_DATA_HOME/vim/view
set runtimepath=$XDG_CONFIG_HOME/vim,$VIMRUNTIME
if !has('nvim')
  set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo
else
  set inccommand=nosplit
endif

let &packpath=&rtp
call plugpac#begin()
Pack 'k-takata/minpac', { 'type': 'opt' }
"Pack 'fatih/vim-go', { 'for': 'go' }
Pack 'ledger/vim-ledger', { 'for': 'ledger' }
Pack 'urbainvaes/vim-tmux-pilot'
Pack 'vimwiki/vimwiki', { 'type': 'opt', 'branch': 'dev' }
Pack 'logico/typewriter-vim', { 'type': 'opt' }
Pack 'junegunn/goyo.vim', { 'type': 'opt' }
Pack 'junegunn/limelight.vim', { 'type': 'opt' }
Pack 'morhetz/gruvbox', { 'type': 'opt' }
Pack 'maxmellon/vim-jsx-pretty', { 'for': 'javascript' }
Pack 'yuezk/vim-js', { 'for': 'javascript' }
Pack 'junegunn/fzf'
Pack 'junegunn/fzf.vim'
Pack 'neoclide/coc.nvim', {'branch': 'release', 'type': 'opt'}
Pack 'iamcco/markdown-preview.nvim', {'do': 'call mkdp#util#install()'}
call plugpac#end()

let mapleader =" "
let maplocalleader =","

filetype plugin indent on 	" add filetype, plugin, and indent support
syntax on
set hlsearch
set background=dark
set shortmess=Ica "do not show message on intro and insert completion
set hidden  			" hide buffer instead of closing when open another file
set splitright                  " open new split at right
set wildmenu
set wildcharm=<tab>  		" use tab to autocomplete vim command 
set wildmode=longest,list,full
set wildignore+=*/node_modules/*,*/ios/*,*/android/*
set noswapfile                    " No swapfiles period.
set ignorecase 			" ignore 
set expandtab
set cursorline
set clipboard=unnamedplus,unnamed
set bs=2

if has("mac")
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
endif

set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set foldlevel=20

" Maps {{{
inoremap fd <esc>
vnoremap fd <esc>
nnoremap <silent> fd :noh<cr>
" }}}


" Move lines
noremap  <M-j> :m+<CR>
noremap  <M-k> :m-2<CR>
vnoremap <M-k> :m-2<CR>gv=gv
vnoremap <M-j> :m'>+<CR>gv=gv

" Quick Find
" Files
" nnoremap <leader>F :call FzyCommand("rg --hidden --files", ":e")<cr>
nnoremap <leader>F :Files<cr>
nnoremap <leader>f :find <C-R>=expand("%:p:h")<cr>/*

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

" Self-explanatory convenience mappings
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

let g:pilot_mode='wintab'
let g:pilot_boundary='ignore'
autocmd VimResized * wincmd =

augroup user_events
	autocmd!
augroup END
" autocmd user_events BufWinEnter * if &buftype == ''
" 	\ | nnoremap <silent><buffer> q :quit<CR>
" 	\ | endif
autocmd user_events QuickFixCmdPost [^l]* cwindow
autocmd user_events QuickFixCmdPost    l* lwindow

vnoremap <backspace> %
nnoremap <backspace> %

" Disable vim distribution plugins
let g:loaded_gzip = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1

let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1

let g:loaded_matchit = 1
let g:loaded_matchparen = 1
let g:loaded_2html_plugin = 1
let g:loaded_logiPat = 1
let g:loaded_rrhelper = 1

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

nnoremap <leader>ww :runtime plugin/vimwiki \| :packadd vimwiki \| VimwikiIndex<cr>

if !has('gui_running')
  let g:gruvbox_contrast_dark='soft'
  colorscheme gruvbox
  "set termguicolors           " Enable GUI colors for the terminal to get truecolor
  set number                  " Line numbers on
  set relativenumber          " Relative numbers on
  set laststatus=2
  set noshowmode
  set signcolumn=yes
else 
  source $XDG_CONFIG_HOME/vim/gvim.vim
end

vnoremap p "_dP
tnoremap <Esc> <C-\><C-n>

let g:lf_map_keys = 0
nnoremap <leader>E :LfWorkingDirectory<CR>
nnoremap <leader>e :Lf<CR>

nnoremap <leader>rw :%s/\s\+$//e<cr>
nnoremap <leader>rs :s/\<./\u&/g<cr>
vnoremap [ xi[]<esc>hp
