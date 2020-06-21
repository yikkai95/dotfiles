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
" 
" let g:go_code_completion_enabled = 0
" let g:go_def_mapping_enabled = 0
" let g:go_doc_keywordprg_enabled = 0
" let g:go_gopls_enabled = 0
" let g:go_auto_type_info = 0
" let g:go_fmt_autosave = 1
" let g:go_imports_autosave = 1

set sw=4 ts=4

nnoremap <silent> <buffer> <leader>db :DlvToggleBreakpoint<cr>
nnoremap <silent> <buffer> <leader>ds :DlvDebug<cr>
nnoremap <buffer> <localLeader>ta :CocCommand go.tags.add<space>
nnoremap <buffer> <localLeader>tr :CocCommand go.tags.remove<space>
nnoremap <buffer> <localLeader>tR :CocCommand go.tags.clear<space>
vnoremap <buffer> <localLeader>ta :CocCommand go.tags.add.line<space>
vnoremap <buffer> <localLeader>tr :CocCommand go.tags.remove.line<space>
vnoremap <buffer> <localLeader>tR :GoRemoveTags<cr>
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
runtime! plugin/coc
