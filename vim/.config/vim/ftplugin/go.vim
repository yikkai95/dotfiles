let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 1

set sw=4 ts=4

nnoremap <silent> <buffer> <leader>db :DlvToggleBreakpoint<cr>
nnoremap <silent> <buffer> <leader>ds :DlvDebug<cr>
runtime! plugin/coc
