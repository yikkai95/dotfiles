" inoremap <silent> <buffer> <Esc>   <C-R>=clap#navigation#linewise('down')<CR><C-R>=clap#navigation#linewise('up')<CR><Esc>
" inoremap <silent> <buffer> jj      <C-R>=clap#navigation#linewise('down')<CR><C-R>=clap#navigation#linewise('up')<CR><Esc>
" inoremap <silent> <buffer> <Tab>   <C-R>=clap#navigation#linewise('down')<CR>
" inoremap <silent> <buffer> <S-Tab> <C-R>=clap#navigation#linewise('up')<CR>
" 
" nnoremap <silent> <buffer> <C-f> :<c-u>call clap#navigation#scroll('down')<CR>
" nnoremap <silent> <buffer> <C-b> :<c-u>call clap#navigation#scroll('up')<CR>
" nnoremap <silent> <buffer> <nowait>' :call clap#handler#tab_action()<CR>
" 
" nnoremap <silent> <buffer> sg  :<c-u>call clap#handler#try_open('ctrl-v')<CR>
" nnoremap <silent> <buffer> sv  :<c-u>call clap#handler#try_open('ctrl-x')<CR>
" nnoremap <silent> <buffer> st  :<c-u>call clap#handler#try_open('ctrl-t')<CR>
" 
" nnoremap <silent> <buffer> q     :<c-u>call clap#handler#exit()<CR>
" nnoremap <silent> <buffer> ZQ :<c-u>call clap#handler#exit()<CR>
" nnoremap <silent> <buffer> <Esc> :call clap#handler#exit()<CR>
