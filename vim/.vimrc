set rtp^=/Users/yikkai95/.local/share/nvim/site/
let &packpath="/Users/yikkai95/.local/share/nvim/site"
call plugpac#begin()
Pack 'k-takata/minpac', { 'type': 'opt' }
Pack 'ledger/vim-ledger', { 'for': 'ledger' }
Pack 'urbainvaes/vim-tmux-pilot'
Pack 'arcticicestudio/nord-vim', { 'type': 'opt' }
Pack  'lifepillar/vim-mucomplete'
Pack 'neovim/nvim-lsp', { 'type': 'opt' }
Pack 'fatih/vim-go', { 'for': 'go' }
Pack 'neovim/nvim-lsp', { 'type': 'opt' }
Pack 'vimwiki/vimwiki', { 'type': 'opt' }
Pack 'logico/typewriter-vim', { 'type': 'opt' }
Pack 'junegunn/goyo.vim', { 'type': 'opt' }
Pack 'junegunn/limelight.vim', { 'type': 'opt' }
"Pack 'pangloss/vim-javascript', {  'for': 'javascript' }
Pack 'maxmellon/vim-jsx-pretty', { 'for': 'javascript' }
Pack 'yuezk/vim-js', { 'for': 'javascript' }
call plugpac#end()

let mapleader =" "
let maplocalleader =","

filetype plugin indent on 	" add filetype, plugin, and indent support
syntax on
set shortmess=Ic "do not show message on intro and insert completion
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
if !has('gui_running')
  set number                  " Line numbers on
  set relativenumber          " Relative numbers on
  colorscheme nord
endi
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
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set foldlevel=20

" Maps {{{
map Q <Nop>
vnoremap L $h
inoremap fd <esc>
vnoremap fd <esc>
nnoremap fd :noh<cr>
" }}}


" Move lines
noremap  <M-j> :m+<CR>
noremap  <M-k> :m-2<CR>
vnoremap <M-k> :m-2<CR>gv=gv
vnoremap <M-j> :m'>+<CR>gv=gv

" Quick Find
" Files
nnoremap <leader>F :call FzyCommand("rg --hidden --files", ":e")<cr>
nnoremap <leader>f :find <C-R>=expand("%:p:h")<cr>/*

" Buffers
nnoremap <leader>B :call Buffers(":e")<cr>
nnoremap <leader>b :buffer *

" Explorer
nnoremap <leader>E :topleft vs .<cr>
nnoremap <leader>e :topleft vs <C-R>=expand("%:p:h")<cr><cr>

" sl
nnoremap sg :vsplit<cr>
nnoremap se :split<cr>

" Greps
nnoremap ,g :silent lgrep<Space>

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

" Self-explanatory convenience mappings
nnoremap ' `
vnoremap ; :
vnoremap : ;
nnoremap ; :
nnoremap : ;

" More manageable brace expansions
inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O

" Linewise mapping
nnoremap gh g^
nnoremap gl g$
vnoremap gh g^
vnoremap gl g$

let g:pilot_mode='wintab'
let g:pilot_boundary='ignore'
autocmd VimResized * wincmd =

nnoremap Q q
nnoremap q <NOP>

augroup user_events
	autocmd!
augroup END
autocmd user_events BufWinEnter * if &buftype == ''
	\ | nnoremap <silent><buffer> q :quit<CR>
	\ | endif
autocmd user_events QuickFixCmdPost [^l]* cwindow
autocmd user_events QuickFixCmdPost    l* lwindow

vnoremap <backspace> %
nnoremap <backspace> %


let g:loaded_tarPlugin= 1
let g:loaded_tar      = 1
let g:loaded_gzip     = 1
let g:loaded_zipPlugin= 1
let g:loaded_zip      = 1

nnoremap <leader>sw :packadd vimwiki<cr>
let g:vimwiki_use_calendar = 1
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_autowriteall = 0
let g:vimwiki_auto_chdir = 1
let g:vimwiki_auto_header = 1
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_list = [
\   { 'path': '~/Documents/Wiki/',
\     'syntax': 'markdown',
\     'links_space_char': '_',
\     'ext': '.md' },
\   { 'diary_header': 'Diary',
\     'diary_link_fmt': '%Y-%m-%d',
\     'auto_toc': 1,
\     'syntax': 'markdown',
\     'ext': '.md' },
\ ]
let g:vimwiki_key_mappings =
      \ {
      \ 'html' : 0,
      \ }
let g:vimwiki_folding = 'expr'
