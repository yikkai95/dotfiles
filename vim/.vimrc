let mapleader =" "
let maplocalleader =","

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'urbainvaes/vim-tmux-pilot'
Plug 'vimwiki/vimwiki', { 'on': 'VimwikiIndex' }
Plug 'cormacrelf/vim-colors-github'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/limelight.vim'
Plug 'logico-software/typewriter'
Plug 'junegunn/goyo.vim'
Plug 'ledger/vim-ledger'
Plug 'tpope/vim-surround'
Plug 'ajh17/VimCompletesMe'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'liuchengxu/vim-better-default'
Plug 'jiangmiao/auto-pairs'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'ferrine/md-img-paste.vim'
Plug 'tpope/vim-markdown'
call plug#end()
let g:vim_better_default_window_key_mapping = 0
runtime! plugin/default.vim

autocmd FileType help map <buffer><silent> q :helpclose<cr>

" Ledger {{{
au FileType ledger noremap { ?^\d<CR>
au FileType ledger noremap } /^\d<CR>
au FileType ledger inoremap <silent> <Tab> <C-r>=ledger#autocomplete_and_align()<CR>
au FileType ledger vnoremap <silent> <Tab> :LedgerAlign<CR>
let g:ledger_default_commodity = 'RM'
let g:ledger_detailed_first = 1
let g:ledger_date_format = '%Y/%m/%d'
au FileType ledger inoremap <silent><buffer> <C-l> <Esc>:call ledger#align_amount_at_cursor()<CR>A.00
" }}}

" Maps {{{
map Q <Nop>
vnoremap L $h
inoremap fd <esc>
vnoremap fd <esc>
nnoremap fd :noh<cr>
" }}}

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

" Backspace
set bs=2

" Theming {{{
let g:airline_theme = "github"
if (has("termguicolors"))
  set termguicolors
endif
" }}}

" markdown {{{
autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
let g:markdown_fenced_languages = [
\ 'html',
\ 'bash=sh',
\ 'css',
\ 'javascript',
\ 'js=javascript',
\ 'go',
\ 'sql',
\ 'ruby',
\]
" }}}

" Vim Enter {{{
augroup vim
  au!
  " au VimEnter * silent execute '!echo -ne "\e[2 q"' | redraw!
  autocmd BufWritePre * %s/\s\+$//e
augroup END
" }}}

" tmux pilot
let g:pilot_mode = 'winonly'

" vimwiki {{{
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
nnoremap <leader>ww :VimwikiIndex<CR>
" }}}

" Move lines
noremap  j :m+<CR>
noremap  k :m-2<CR>
vnoremap <M-k> :m-2<CR>gv=gv
vnoremap <M-j> :m'>+<CR>gv=gv

augroup ftype
  au!
  au BufNewFile,BufRead *js set sw=2
augroup END


" Terminal
  autocmd BufEnter,BufWinEnter,WinEnter term://* startinsert
  tnoremap <C-o> <C-\><C-n>
  tnoremap <C-h> <c-\><c-n><c-w>h
  tnoremap <C-j> <c-\><c-n><c-w>j
  tnoremap <C-k> <c-\><c-n><c-w>k
  tnoremap <C-l> <c-\><c-n><c-w>l

" Quick Find
nnoremap <silent> ,G :Grep
nnoremap ,f :find *
nnoremap ,v :vert sfind *
nnoremap ,F :find <C-R>=fnameescape(expand('%:p:h')).'/**/*'<CR>
nnoremap ,V :vert sfind <C-R>=fnameescape(expand('%:p:h')).'/**/*'<CR>
nnoremap ,e :e **/*<C-z><S-Tab>
nnoremap ,b :buffer *

" Command Line
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>

" File Path Shortcuts
cnoremap <Leader>fp <C-R>=expand("%:p:h")<CR>
tnoremap <Leader>fp <C-R>=expand("%:p:h")<CR>
inoremap <Leader>fp <C-R>=expand("%:p:h")<CR>
cnoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
tnoremap <Leader>fn <C-R>=expand("%:t:r")<CR>
inoremap <Leader>fn <C-R>=expand("%:t:r")<CR>

let g:ctrlp_user_command = {
	\ 'types': {
		\ 1: ['.rgignore', 'rg %s --files --no-heading'],
		\ },
	\ 'fallback': 'find %s -type f'
	\ }
