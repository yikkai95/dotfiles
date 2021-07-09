let g:wiki_root = '~/repo/notes/'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'
let g:wiki_link_target_type = 'md'
let g:wiki_date_exe = 'gdate'
let g:wiki_map_create_page = 'MyFunction'
let g:wiki_map_link_create = 'MyFunction'
let g:wiki_journal = {
    \ 'name': 'diary',
    \ 'frequency': 'daily',
    \ 'date_format': {
    \   'daily' : '%F',
    \ },
    \}
function MyFunction(name) abort
  let l:name = wiki#get_root() . '/' . a:name
  " If the file is new, then append the current date
  return filereadable(l:name)
        \ ? a:name
        \ : substitute(tolower(a:name), '\s', '_', 'g')
endfunction
