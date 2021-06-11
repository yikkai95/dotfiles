noremap <buffer> { ?^\d<CR>
noremap <buffer> } /^\d<CR>
inoremap <silent><buffer> <Tab> <C-r>=ledger#autocomplete_and_align()<CR>
vnoremap <silent><buffer> <Tab> :LedgerAlign<CR>
inoremap <silent><buffer> <C-l> <Esc>:call ledger#align_amount_at_cursor()<CR>A.00
set completeopt=menu

"let g:mucomplete#force_manual = 1
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:ledger_default_commodity = 'RM'
let g:ledger_detailed_first = 1
let g:ledger_date_format = '%Y/%m/%d'

inoreabbrev ]] [Assets:Budget:]<left>
inoreabbrev dine Expenses:Food:Dine
inoreabbrev bank Assets:Bank:Maybank
inoreabbrev cash Assets:Cash

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nmap <tab> <Plug>(completion_smart_tab)
nmap <s-tab> <Plug>(completion_smart_s_tab)
set sw=4
