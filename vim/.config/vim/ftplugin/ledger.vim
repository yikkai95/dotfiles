noremap <buffer> { ?^\d<CR>
noremap <buffer> } /^\d<CR>
inoremap <silent><buffer> <Tab> <C-r>=ledger#autocomplete_and_align()<CR>
vnoremap <silent><buffer> <Tab> :LedgerAlign<CR>
inoremap <silent><buffer> <C-l> <Esc>:call ledger#align_amount_at_cursor()<CR>A.00
set completeopt=menu

let g:mucomplete#force_manual = 1
let g:ledger_default_commodity = 'RM'
let g:ledger_detailed_first = 1
let g:ledger_date_format = '%Y/%m/%d'

inoreabbrev ]] [Assets:Budget:]<left>

set sw=4

" highlight default link ledgerAccount healthError
" highlight default link ledgerTransactionDate Statement
"hi ledgerAccount ctermfg=4
"hi ledgerTransactionDate ctermfg=1
