set undodir=$XDG_DATA_HOME/vim/undo
set directory=$XDG_DATA_HOME/vim/swap
set backupdir=$XDG_DATA_HOME/vim/backup 
set viewdir=$XDG_DATA_HOME/vim/view
set runtimepath=$XDG_CONFIG_HOME/nvim,$VIMRUNTIME

set rtp+=/usr/local/opt/fzf
let &packpath=&rtp
call plugpac#begin()

Pack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Pack 'k-takata/minpac', { 'type': 'opt' }
Pack 'NLKNguyen/papercolor-theme'
Pack 'lambdalisue/nerdfont.vim'
Pack 'ledger/vim-ledger', { 'for': 'ledger' }
Pack 'urbainvaes/vim-tmux-pilot'
Pack 'lervag/wiki.vim'
Pack 'logico/typewriter-vim', { 'type': 'opt' }
Pack 'junegunn/goyo.vim', { 'type': 'opt' }
Pack 'junegunn/limelight.vim', { 'type': 'opt' }
Pack 'morhetz/gruvbox', { 'type': 'opt' }
Pack 'maxmellon/vim-jsx-pretty', { 'for': 'javascript' }
Pack 'yuezk/vim-js', { 'for': 'javascript' }
Pack 'junegunn/fzf.vim'
Pack 'iamcco/markdown-preview.nvim', {'do': 'call mkdp#util#install()', 'type': 'opt'}
Pack 'neovim/nvim-lspconfig', { 'type': 'opt' }
Pack 'nvim-lua/completion-nvim', { 'type': 'opt' } 
Pack 'kana/vim-textobj-user', { 'type': 'opt' }
Pack 'tpope/vim-markdown', { 'for': 'markdown' }
Pack 'reedes/vim-colors-pencil', { 'type': 'opt' }
Pack 'reedes/vim-pencil', { 'type': 'opt' }
Pack 'reedes/vim-litecorrect', { 'type': 'opt' }
Pack 'reedes/vim-wheel', { 'type': 'opt' }
Pack 'preservim/tagbar', { 'type': 'opt' }
Pack 'ptzz/lf.vim'
Pack 'tpope/vim-surround'
Pack 'chriskempson/base16-vim'
Pack 'tyru/caw.vim'
Pack 'tomlion/vim-solidity'
Pack 'tpope/vim-repeat'
call plugpac#end()

let mapleader =" " 
let maplocalleader =","

" urbainvaes/vim-tmux-pilot
let g:pilot_mode='wintab'
let g:pilot_boundary='ignore'

" plugin/lf.vim
let g:lf_map_keys = 0
nnoremap <leader>E :LfWorkingDirectory<CR>
nnoremap <leader>e :Lf<CR>
" nnoremap <leader>x :Fern %:h -drawer -toggle<cr>

" nvim lsp
packadd nvim-lspconfig
packadd completion-nvim
lua << EOF
  local method = "textDocument/publishDiagnostics"
  vim.lsp.callbacks[method] = function(err, method, result, client_id)
      end
  require'nvim_lsp'.gopls.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.tsserver.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.rls.setup{on_attach=require'completion'.on_attach}

EOF
let g:completion_chain_complete_list = {
	    \ 'go': [
	    \   {'complete_items': ['lsp', 'snippet']},
	    \   {'mode': '<c-p>'},
	    \],
	    \ 'markdown': [
	    \   {'mode': 'omni'},
	    \],
	    \}


lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "javascript", "html", "rust", "json" },
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c" },  -- list of language that will be disabled
  },
}
EOF
