set undodir=$XDG_DATA_HOME/vim/undo
set directory=$XDG_DATA_HOME/vim/swap
set backupdir=$XDG_DATA_HOME/vim/backup 
set viewdir=$XDG_DATA_HOME/vim/view

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'k-takata/minpac'
Plug 'urbainvaes/vim-tmux-pilot'
Plug 'lervag/wiki.vim'
Plug 'junegunn/fzf.vim'
Plug 'iamcco/markdown-preview.nvim', {'do': 'call mkdp#util#install()'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-markdown'
Plug 'ptzz/lf.vim'
Plug 'tpope/vim-surround'
Plug 'tomlion/vim-solidity'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'voldikss/vim-floaterm'
call plug#end()

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
lua << EOF
require'lspinstall'.setup()
local method = "textDocument/publishDiagnostics"
vim.lsp.handlers[method] = function(err, method, result, client_id)
	end
local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "javascript", "html", "rust", "json", "html" },
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c" },  -- list of language that will be disabled
  },
}
EOF
