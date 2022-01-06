compiler go

command! -nargs=* -range GoAddTags call go#tags#Add(<line1>, <line2>, <count>, <f-args>)
command! -nargs=* -range GoRemoveTags call go#tags#Remove(<line1>, <line2>, <count>, <f-args>)
nnoremap <localleader>ta :GoAddTags 
vnoremap <localleader>tr :GoRemoveTags 
vnoremap <localleader>ta :GoAddTags 
nnoremap <localleader>tr :GoRemoveTags 

set fdm=indent


let g:go_version_warning = 0
let g:go_code_completion_enabled = 0
let g:go_play_open_browser = 1
let g:go_jump_to_error = 1
let g:go_fmt_autosave = 0
let g:go_fmt_fail_silently = 0
let g:go_fmt_experimental = 0
let g:go_imports_autosave = 0 
let g:go_mod_fmt_autosave = 0 
let g:go_doc_keywordprg_enabled = 0
let g:go_doc_balloon = 0
let g:go_doc_popup_window = 0
let g:go_fillstruct_mode = 'fillstruct'
let g:go_def_mapping_enabled = 0
let g:go_def_reuse_buffer = 0
let g:go_search_bin_path_first = 0
let g:go_get_update = 0
let g:go_textobj_include_function_doc = 1
let g:go_textobj_include_variable = 1
let g:go_metalinter_autosave = 0
let g:go_metalinter_enabled = []
let g:go_list_autoclose = 1
let g:go_asmfmt_autosave = 0
let g:go_term_enabled = 0
let g:go_term_close_on_exit = 1
let g:go_alternate_mode = "edit"
let g:go_rename_command = 'gopls'
let g:go_gopls_enabled = 0
let g:go_diagnostics_enabled = 0
let g:go_diagnostics_level = 0
let g:go_template_autocreate = 0
let g:go_decls_includes = 'func,type'
let g:go_echo_command_info = 0
let g:go_echo_go_info = 0
