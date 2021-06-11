function! go#textobj#SelectFunctionA()
  call search('func', 'b')
  let s = getpos('.')

  normal! $%
  let e = getpos('.')

  if 1 < e[1] - s[1]  " is there some code?
    return ['V', e, s]
  else
    return 0
  endif
endfunction

function! go#textobj#SelectFunctionI()
  call search('func', 'b')
  let s = getpos('.')
  let s[1] += 1

  normal! $%
  let e = getpos('.')
  let e[1] -= 1

  if 1 < e[1] - s[1]  " is there some code?
    return ['V', e, s]
  else
    return 0
  endif
endfunction

function! go#textobj#SelectStructA()
  call search('struct', 'b')
  let s = getpos('.')

  normal! $%
  let e = getpos('.')

  if 1 < e[1] - s[1]  " is there some code?
    return ['V', e, s]
  else
    return 0
  endif
endfunction

function! go#textobj#SelectStructI()
  call search('struct', 'b')
  let s = getpos('.')
  let s[1] += 1

  normal! $%
  let e = getpos('.')
  let e[1] -= 1

  return ['V', e, s]
endfunction
