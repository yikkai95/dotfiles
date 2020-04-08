function! s:completed(winid, filename, action, ...) abort
    bdelete!
    call win_gotoid(a:winid)
    if filereadable(a:filename)
      let lines = readfile(a:filename)
      if !empty(lines)
        exe a:action . ' ' . lines[0]
      endif
      call delete(a:filename)
    endif
endfunction

function! FzyCommand(choice_command, vim_command)
    let file = tempname()
    let winid = win_getid()
    let cmd = split(&shell) + split(&shellcmdflag) + [a:choice_command . ' | fzf > ' . file]
    let F = function('s:completed', [winid, file, a:vim_command])
    botright 10 new
    tnoremap <buffer> <C-j> <down>
    tnoremap <buffer> <C-k> <up>
    if has('nvim')
        call termopen(cmd, {'on_exit': F})
    else
        call term_start(cmd, {'exit_cb': F, 'curwin': 1})
    endif
    startinsert
endfunction


function! Buffers()
    redir! > ls
    silent ls
    redir END
    let file = tempname()
    let winid = win_getid()
    let cmd = split(&shell) + split(&shellcmdflag) +  ["awk -F '\"' 'NR>1 {print $2}' ls | fzf > " . file]
    let F = function('s:completed', [winid, file, ":e"])
    botright 10 new
    tnoremap <buffer> <C-j> <down>
    tnoremap <buffer> <C-k> <up>
    if has('nvim')
        call termopen(cmd, {'on_exit': F})
    else
        call term_start(cmd, {'exit_cb': F, 'curwin': 1})
    endif
    startinsert
endfunction

nnoremap <localleader>F :call FzyCommand("rg --hidden --files", ":e")<cr>
nnoremap <localleader>V :call FzyCommand("rg --hidden --files", ":vs")<cr>
nnoremap <localleader>S :call FzyCommand("rg --hidden --files", ":sp")<cr>
nnoremap <localleader>B :call Buffers()<cr>
