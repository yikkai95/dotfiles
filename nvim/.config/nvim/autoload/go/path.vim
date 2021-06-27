" BinPath returns the binary path of installed go tools.
function! go#path#BinPath() abort
  let bin_path = go#config#BinPath()
  if bin_path != ""
    return bin_path
  endif

  " check if our global custom path is set, if not check if $GOBIN is set so
  " we can use it, otherwise use default GOPATH
  if $GOBIN != ""
    let bin_path = $GOBIN
  else
    let go_paths = split(go#path#Default(), go#util#PathListSep())
    if len(go_paths) == 0
      return "" "nothing found
    endif
    let bin_path = expand(go_paths[0] . "/bin/")
  endif

  return bin_path
endfunction

" CheckBinPath checks whether the given binary exists or not and returns the
" path of the binary, respecting the go_bin_path and go_search_bin_path_first
" settings. It returns an empty string if the binary doesn't exist.
function! go#path#CheckBinPath(binpath) abort
  " remove whitespaces if user applied something like 'goimports   '
  let binpath = substitute(a:binpath, '^\s*\(.\{-}\)\s*$', '\1', '')

  " save original path
  let old_path = $PATH

  " check if we have an appropriate bin_path
  let go_bin_path = go#path#BinPath()
  if !empty(go_bin_path)
    " append our GOBIN and GOPATH paths and be sure they can be found there...
    " let us search in our GOBIN and GOPATH paths
    " respect the ordering specified by go_search_bin_path_first
    if go#config#SearchBinPathFirst()
      let $PATH = go_bin_path . go#util#PathListSep() . $PATH
    else
      let $PATH = $PATH . go#util#PathListSep() . go_bin_path
    endif
  endif

  " if it's in PATH just return it
  if executable(binpath)
    if exists('*exepath')
      let binpath = exepath(binpath)
    endif
    let $PATH = old_path

    return binpath
  endif

  " just get the basename
  let basename = fnamemodify(binpath, ":t")
  if !executable(basename)
    call go#util#EchoError(printf("could not find '%s'. Run :GoInstallBinaries to fix it", basename))

    " restore back!
    let $PATH = old_path
    return ""
  endif

  let $PATH = old_path

  return go_bin_path . go#util#PathSep() . basename
endfunction
