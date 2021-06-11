set sw=4 ts=4

compiler go
packadd vim-textobj-user
call textobj#user#plugin('go', {
\   'function': {
\     'select-a-function': 'go#textobj#SelectFunctionA',
\     'select-a': '<buffer> af',
\     'select-i-function': 'go#textobj#SelectFunctionI',
\     'select-i': '<buffer> if',
\   },
\   'struct': {
\     'select-a-function': 'go#textobj#SelectStructA',
\     'select-a': '<buffer> as',
\     'select-i-function': 'go#textobj#SelectStructI',
\     'select-i': '<buffer> is',
\   },
\ })


call go#lsp#Setup()
command! -nargs=* -range GoAddTags call go#tags#Add(<line1>, <line2>, <count>, <f-args>)
command! -nargs=* -range GoRemoveTags call go#tags#Remove(<line1>, <line2>, <count>, <f-args>)
nnoremap <localleader>ta :GoAddTags 
vnoremap <localleader>tr :GoRemoveTags 
vnoremap <localleader>ta :GoAddTags 
nnoremap <localleader>tr :GoRemoveTags 
nnoremap <localleader>f :!gofmt -w %
nnoremap <localleader>i :!goimports -w %
"nnoremap <localleader>w :w<cr>:!gofmt -w % && goimports -w %<cr>:e<cr>
nnoremap <localleader>w :lua goimports(1000)<cr>
vnoremap ,u :norm wwdf:ElD^diwA, c.pISet(A).<cr>
vnoremap ,e :w !sh<cr>

lua <<EOF
  function goimports(timeoutms)
    local context = { source = { organizeImports = true } }
    vim.validate { context = { context, "t", true } }

    local params = vim.lsp.util.make_range_params()
    params.context = context

    local method = "textDocument/codeAction"
    local resp = vim.lsp.buf_request_sync(0, method, params, timeoutms)
    if resp and resp[1] then
      local result = resp[1].result
      if result and result[1] then
        local edit = result[1].edit
        vim.lsp.util.apply_workspace_edit(edit)
      end
    end

    vim.lsp.buf.formatting()
  end
EOF


set fdm=expr
set foldexpr=nvim_treesitter#foldexpr()
