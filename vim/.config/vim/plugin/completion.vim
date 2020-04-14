set completeopt=menu,noinsert,noselect,menuone
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#can_complete = {}
let g:mucomplete#can_complete.go = { 'omni': { t -> t =~# '\m\k\%(\k\|\.\)$' } }
let g:mucomplete#chains = {}
let g:mucomplete#chains.ledger = [ 'file', 'omni' ]
let g:mucomplete#chains.sql = [ 'keyn', 'keyp' ]
" function! Complete(direction) "{{{
"     " direction: 1-forward, 2-backward, 0-show
"     if &omnifunc != 'v:lua.vim.lsp.omnifunc'  " lsp
"       return "\<c-n>"
"     endif
"     if pumvisible()
"         if a:direction
"             if a:direction == 1 "without shift, forward
"                 return "\<c-n>"
"             endif
"             " with shift, back
"             return "\<c-p>"
"         endif
"     endif
"     let chars = 2  " chars before triggering
"     let pattern = '\(\w\|\d\)\{' . chars . '}'
"     let col = col('.') - 1
"     let line = getline('.')
"     let last_chars = line[col-chars:col-1]
"     if !a:direction && last_chars !~# pattern || !col || last_chars[-1] =~ '\s'
"         " not at a completeable place
"         return "\<tab>"
"     endif
"     " prevent keyword completion from making nvim unresponsive
"     " check th[es]e| chars for previous attempts
"     let before_match = line[col-chars-1:col-2]
"     if !a:direction && len(before_match) && before_match =~# pattern
"         return ''
"     endif
"     call feedkeys("\<c-n>")  " keyword completion
"     setlocal completeopt+=noinsert,noselect,menuone
"     execute 'call' &omnifunc . '(0, "")'
"     return ''
" endfunction
" 
" " manual completion and cycling
" imap <expr> <tab> Complete(1)
" imap <expr> <s-tab> Complete(-1)
" smap <expr> <tab> Complete(1)
" inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
" 
" " automatic completion
" autocmd TextChangedI * call Complete(0)

