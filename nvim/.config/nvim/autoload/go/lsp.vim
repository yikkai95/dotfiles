function! go#lsp#Setup()
  set completeopt=menuone,noinsert,noselect
  let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
  nnoremap <silent> <buffer> gd <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> <buffer> K     <cmd>lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> <buffer> gr    <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent> <buffer> <leader>rn    <cmd>lua vim.lsp.buf.rename()<CR>
  inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
endfunction
