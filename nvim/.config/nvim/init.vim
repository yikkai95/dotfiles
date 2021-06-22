set undodir=$XDG_DATA_HOME/vim/undo
set directory=$XDG_DATA_HOME/vim/swap
set backupdir=$XDG_DATA_HOME/vim/backup 
set viewdir=$XDG_DATA_HOME/vim/view
set runtimepath=$XDG_CONFIG_HOME/nvim,$VIMRUNTIME

set rtp+=/usr/local/opt/fzf
let &packpath=&rtp
call plugpac#begin()

Pack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Pack 'k-takata/minpac', { 'type': 'opt' }
Pack 'NLKNguyen/papercolor-theme'
Pack 'lambdalisue/nerdfont.vim'
Pack 'ledger/vim-ledger', { 'for': 'ledger' }
Pack 'urbainvaes/vim-tmux-pilot'
Pack 'lervag/wiki.vim'
Pack 'junegunn/fzf.vim'
Pack 'iamcco/markdown-preview.nvim', {'do': 'call mkdp#util#install()', 'type': 'opt'}
Pack 'neovim/nvim-lspconfig', { 'type': 'opt' }
Pack 'hrsh7th/nvim-compe'
"Pack 'nvim-lua/completion-nvim', { 'type': 'opt' } 
Pack 'kana/vim-textobj-user', { 'type': 'opt' }
Pack 'tpope/vim-markdown', { 'for': 'markdown' }
Pack 'ptzz/lf.vim'
Pack 'tpope/vim-surround'
Pack 'tomlion/vim-solidity'
Pack 'kabouzeid/nvim-lspinstall'
Pack 'voldikss/vim-floaterm'
call plugpac#end()

let mapleader =" " 
let maplocalleader =","

" urbainvaes/vim-tmux-pilot
let g:pilot_mode='wintab'
let g:pilot_boundary='ignore'

" plugin/lf.vim
let g:floaterm_opener = 'edit'
let g:lf_map_keys = 0
nnoremap <leader>E :LfWorkingDirectory<CR>
nnoremap <leader>e :Lf<CR>

" nvim lsp
set completeopt=menuone,noinsert,noselect
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
packadd nvim-lspconfig
" packadd completion-nvim
lua << EOF
  require'lspinstall'.setup()
  local method = "textDocument/publishDiagnostics"
  vim.lsp.callbacks[method] = function(err, method, result, client_id)
      end
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
  -- require'nvim_lsp'.gopls.setup{}
  -- require'nvim_lsp'.tsserver.setup{}
  -- require'nvim_lsp'.rls.setup{}

EOF
"let g:completion_chain_complete_list = {
"	    \ 'go': [
"	    \   {'complete_items': ['lsp', 'snippet']},
"	    \   {'mode': '<c-p>'},
"	    \],
"	    \ 'markdown': [
"	    \   {'mode': 'omni'},
"	    \],
"	    \}


lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "javascript", "html", "rust", "json", "html" },
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c" },  -- list of language that will be disabled
  },
}
EOF
