let g:vimwiki_use_calendar = 1
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_autowriteall = 0
let g:vimwiki_auto_chdir = 1
let g:vimwiki_auto_header = 1
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_list = [
\   { 'path': '~/Documents/Wiki/',
\     'syntax': 'markdown',
\     'links_space_char': '_',
\     'ext': '.md' },
\   { 'diary_header': 'Diary',
\     'diary_link_fmt': '%Y-%m-%d',
\     'auto_toc': 1,
\     'syntax': 'markdown',
\     'ext': '.md' },
\ ]
let g:vimwiki_key_mappings =
      \ {
      \ 'html' : 0,
      \ }
nnoremap <leader>ww :VimwikiIndex<CR>
