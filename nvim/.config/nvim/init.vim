call plug#begin(stdpath('data') . '/plugged')
Plug 'github/copilot.vim'
Plug 'luukvbaal/nnn.nvim'
Plug 'rose-pine/neovim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'fatih/vim-go'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'urbainvaes/vim-tmux-pilot'
Plug 'sharat87/roast.vim'
Plug 'ajgrf/parchment'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'KimNorgaard/vim-frign'
Plug 'robertmeta/nofrils'
Plug 'yankcrime/direwolf'
Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'jakewvincent/mkdnflow.nvim'
Plug 'olivertaylor/vacme'
"Plug 'Exafunction/codeium.vim'
call plug#end()


set completeopt=menu,menuone,noselect
"colo vacme
"set termguicolors 
"set guifont=GoMono\ Nerd\ Font:h10
set guifont=Terminus:h10
let g:neovide_cursor_vfx_mode = "ripple"

        imap <silent><script><expr> <C-N> copilot#Accept("\<CR>")
        let g:copilot_no_tab_map = v:true

lua << EOF
require("nnn").setup()
local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
local cmp = require "cmp"

cmp.setup(
    {

          mapping = {

            -- ... Your other configuration ...

            ['<CR>'] = function(fallback)
                    if cmp.visible() then
                            cmp.confirm()
                    else
                            fallback() -- If you use vim-endwise, this fallback will behave the same as vim-endwise.
                    end
            end,

            ['<C-g>'] = cmp.mapping(function(fallback)
                vim.api.nvim_feedkeys(vim.fn['copilot#Accept'](vim.api.nvim_replace_termcodes('<Tab>', true, true, true)), 'n', true)
            end),

            ['<Tab>'] = function(fallback)
              if not cmp.select_next_item() then
                if vim.bo.buftype ~= 'prompt' and has_words_before() then
                  cmp.complete()
                else
                  fallback()
                end
              end
            end,

            ['<S-Tab>'] = function(fallback)
              if not cmp.select_prev_item() then
                if vim.bo.buftype ~= 'prompt' and has_words_before() then
                  cmp.complete()
                else
                  fallback()
                end
              end
            end,
          },
         snippet = {
             expand = function(args)
                 vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
             end
         },
        -- mapping = {
        --     ["<Tab>"] = cmp.mapping(
        --         function(fallback)
        --             if cmp.visible() then
        --                 cmp.select_next_item()
        --             elseif vim.fn["vsnip#available"](1) == 1 then
        --                 feedkey("<Plug>(vsnip-expand-or-jump)", "")
        --             elseif has_words_before() then
        --                 cmp.complete()
        --             else
        --                 fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        --             end
        --         end,
        --         {"i", "s"}
        --     ),
        --     ["<S-Tab>"] = cmp.mapping(
        --         function()
        --             if cmp.visible() then
        --                 cmp.select_prev_item()
        --             elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        --                 feedkey("<Plug>(vsnip-jump-prev)", "")
        --             end
        --         end,
        --         {"i", "s"}
        --     ),
        --     ["<CR>"] = cmp.mapping.confirm({select = true})
        -- },
        sources = cmp.config.sources(
            {
                {name = "nvim_lsp"}
            },
            {
                {name = "buffer"}
            },
            {
                {name = "path"}
            }
        ),
    }
)

cmp.setup.cmdline(
    ":",
    {
        sources = cmp.config.sources(
            {
                {name = "path"}
            },
            {
                {name = "cmdline"}
            }
        )
    }
)

local capabilities = require('cmp_nvim_lsp').default_capabilities()
--local on_attach = function(client, bufnr)
--    local function buf_set_keymap(...)
--        vim.api.nvim_buf_set_keymap(bufnr, ...)
--    end
--    local function buf_set_option(...)
--        vim.api.nvim_buf_set_option(bufnr, ...)
--    end
--
--    -- Mappings.
--    local opts = {noremap = true, silent = true}
--
--    -- See `:help vim.lsp.*` for documentation on any of the below functions
--    buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
--    buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
--    buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
--    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
--    buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
--    buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
--    buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
--    buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
--    buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
--    buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
--    buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
--    buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
--    buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
--    buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
--    buf_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
--    ""buf_set_keymap('n', ',w', '<cmd>lua goimports(1000)<CR>', opts)
--    vim.keymap.set('n', ',w', function()
--      vim.lsp.buf.format { async = true }
--    end, opts)
--    buf_set_keymap('n', ',e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
--end


vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', ',w', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- function goimports(timeoutms)
--   local context = { source = { organizeImports = true } }
--   vim.validate { context = { context, "t", true } }
-- 
--   local params = vim.lsp.util.make_range_params()
--   params.context = context
-- 
--   local method = "textDocument/codeAction"
--   local resp = vim.lsp.buf_request_sync(0, method, params, timeoutms)
--   if resp and resp[1] then
--     local result = resp[1].result
--     if result and result[1] then
--       local edit = result[1].edit
--       vim.lsp.util.apply_workspace_edit(edit, "utf-16")
--     end
--   end
-- 
--   vim.lsp.buf.formatting()
-- end

-- LSP settings (for overriding per client)
local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = "single"}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = "single" }),
}

require("nvim-lsp-installer").setup {}

nvim_lsp = require("lspconfig")

local servers = { 'gopls', 'rust_analyzer', 'html', 'terraformls', 'move_analyzer'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    handlers = handlers,
    capabilities = capabilities,
  }
end

nvim_lsp["denols"].setup {
  on_attach = on_attach,
  root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
}

nvim_lsp["tsserver"].setup {
  on_attach = on_attach,
  root_dir = nvim_lsp.util.root_pattern("package.json"),
  single_file_support = false
}

-- require'nvim-treesitter.configs'.setup {
-- ensure_installed = {"go", "rust", "typescript", "javascript", "hcl"},
--   sync_install = false,
--   ignore_install = {},
--   highlight = {
--     enable = true,
--     disable = {'vim'},
--     additional_vim_regex_highlighting = false,
--   },
-- }

-- require('mkdnflow').setup({
--   links = {
--       style = 'markdown',
--       implicit_extension = nil,
--       transform_implicit = false,
--       transform_explicit = function(text)
--           text = text:gsub(" ", "-")
--           text = text:lower()
--           text = text
--           return(text)
--       end
--   },
-- })
EOF

let mapleader =" "
let maplocalleader =","


iab <expr> dd strftime("%s")


" urbainvaes/vim-tmux-pilot
let g:pilot_mode='wintab'
let g:pilot_boundary='ignore'
let g:pilot_key_h='<C-h>'
let g:pilot_key_j='<C-j>'
let g:pilot_key_k='<C-k>'
let g:pilot_key_l='<C-l>'
let g:pilot_key_p='<C-\>'
hi FloatBorder guifg=white

hi Pmenu ctermfg=None ctermbg=None
hi Search ctermfg=None ctermbg=None cterm=underline
hi Visual ctermfg=black ctermbg=white

" system clipboard
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+


autocmd BufRead /home/nnnyykk/repo/tavern/data.js nnoremap <buffer> ,i :execute '!xdg-open' 'media/large/' . expand('<cword>') . '.jpg'<cr>
autocmd BufRead /home/nnnyykk/repo/tavern/data.js nnoremap <buffer> ,o :execute '!xdg-open' 'media/large/' . expand('<cword>') . '.mp4'<cr>
