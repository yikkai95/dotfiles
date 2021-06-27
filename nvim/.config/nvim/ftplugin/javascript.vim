set fdm=expr
set foldexpr=nvim_treesitter#foldexpr()
setlocal foldmethod=syntax
"hi jsClassProp ctermfg=12
"hi jsxComponentName ctermfg=12
"hi jsxEndComponentName ctermfg=12
"hi jsObjectKey ctermfg=12
set sw=2 ts=2
call go#lsp#Setup()
