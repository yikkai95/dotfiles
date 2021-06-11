set undodir=$XDG_DATA_HOME/vim/undo
set directory=$XDG_DATA_HOME/vim/swap
set backupdir=$XDG_DATA_HOME/vim/backup 
set viewdir=$XDG_DATA_HOME/vim/view
set runtimepath=$XDG_CONFIG_HOME/nvim,$VIMRUNTIME

set rtp+=/usr/local/opt/fzf
let &packpath=&rtp
call plugpac#begin()
Pack 'k-takata/minpac', { 'type': 'opt' }
Pack 'lervag/wiki.vim', { 'type': 'opt' }
Pack 'junegunn/goyo.vim', { 'type': 'opt' }
Pack 'junegunn/limelight.vim', { 'type': 'opt' }
Pack 'nvim-lua/completion-nvim', { 'type': 'opt' } 
Pack 'tpope/vim-markdown', { 'for': 'markdown' }
Pack 'reedes/vim-colors-pencil', { 'type': 'opt' }
Pack 'reedes/vim-pencil'
Pack 'preservim/tagbar'
Pack 'reedes/vim-wheel'
Pack 'reedes/vim-litecorrect'
Pack 'thezeroalpha/vim-lf'
call plugpac#end()

let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1
let mapleader =" " 
let maplocalleader =","
filetype plugin indent on 	" add filetype, plugin, and indent support
syntax on
set hlsearch
set shortmess=Ica "do not show message on intro and insert completion
set hidden  			" hide buffer instead of closing when open another file
set splitright                  " open new split at right
set wildmenu
set wildcharm=<tab>  		" use tab to autocomplete vim command set wildmode=longest,list,full set laststatus=2
set wildignore+=*/node_modules/*,*/ios/*,*/android/*
set noswapfile                    " No swapfiles period.
set ignorecase 			" ignore 
set expandtab
set cursorline
set clipboard=unnamedplus,unnamed
set bs=2

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

autocmd VimResized * wincmd =

autocmd user_events QuickFixCmdPost [^l]* cwindow
autocmd user_events QuickFixCmdPost    l* lwindow

vnoremap <backspace> %
nnoremap <backspace> %

vnoremap p "_dP
tnoremap <Esc> <C-\><C-n>

let g:lf_command_override = 'lf -command "set nopreview; set ratios 1"'
let g:lf_map_keys = 0
nnoremap <leader>E :LfWorkingDirectory<CR>
nnoremap <leader>e :Lf<CR>
" nnoremap <leader>x :Fern %:h -drawer -toggle<cr>

nnoremap <leader>rw :%s/\s\+$//e<cr>
nnoremap <leader>rs :s/\<./\u&/g<cr>
vnoremap [ xi[]<esc>hp

packadd completion-nvim
vnoremap ,u :norm wwdf:ElD^diwA, c.fdpISet(fdA).<cr>
nnoremap <leader>1 :e /tmp/pb<cr>
" custom fzf function to open temporary file 
nnoremap <silent> <leader>ma :!grep -Fxq %:p /tmp/bf \|\| echo %:p >> /tmp/bf<cr>
nnoremap <leader>ml :call fzf#run({'source': 'cat /tmp/bf', 'sink': 'e'})<cr>

let g:wiki_root = '~/Documents/Wiki/'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'
let g:wiki_link_target_type = 'md'
let g:wiki_date_exe = 'gdate'
let g:wiki_map_create_page = 'MyFunction'
let g:wiki_map_link_create = 'MyFunction'
let g:wiki_journal = {
    \ 'name': 'diary',
    \ 'frequency': 'daily',
    \ 'date_format': {
    \   'daily' : '%F',
    \ },
    \}
function MyFunction(name) abort
  let l:name = wiki#get_root() . '/' . a:name
  " If the file is new, then append the current date
  return filereadable(l:name)
        \ ? a:name
        \ : substitute(tolower(a:name), '\s', '_', 'g')
endfunction

" get relative file with line number
nnoremap <silent> <leader>yl :let @+=expand("%:.") . ":" . line(".")<cr>
nnoremap <leader>yp :let @+=expand("%:p")<cr>
set background=light
colorscheme pencil
set linespace=8

let g:fzf_colors =
  \ { 'fg':      ['fg', 'OffWhiteDemo'],
    \ 'bg':      ['bg', 'OffWhiteDemo'],
    \ 'hl':      ['fg', 'Normal'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine'],
    \ 'hl+':     ['fg', 'Normal'],
    \ 'info':    ['fg', 'Normal'],
    \ 'prompt':  ['fg', 'Normal'],
    \ 'pointer': ['fg', 'Normal'],
    \ 'marker':  ['fg', 'Normal'],
    \ 'spinner': ['fg', 'Normal'],
    \ 'header':  ['fg', 'Normal'] }


let g:fzf_preview_window = []
let g:fzf_layout = { 'window': { 'width': 0.3, 'height': 0.6 } }

augroup litecorrect
  autocmd!
  autocmd FileType markdown call litecorrect#init()
augroup END

nmap <leader>e <Plug>LfEdit

function! Complete( findstart, base )
  if a:findstart
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '[A-Za-z_]'
        let start -= 1
    endwhile
    return start
  else
    "let matches = filter(readfile(expand('~/Repo/30k.txt')), 'match(v:val, a:base) >= 0')
    let matches = systemlist('rg -N ' .a:base . ' ~/Repo/30k.txt')
    " for thismatch in getqflist()
    "     call add(matches, thismatch.text)
    " endfor
    return matches
  endif
endfunction
packadd limelight.vim
packadd goyo.vim
