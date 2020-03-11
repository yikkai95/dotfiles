function! DistractionFreeWriting()
  " colorscheme typewriter
  colorscheme github
  highlight clear LineNr
  highlight clear SignColumn
  highlight EndOfBuffer ctermfg=bg ctermbg=bg guifg=bg guibg=bg
  nmap <F12> :Goyo <bar> Limelight!!<CR>"
  set linespace=8
  set guifont=SF\ Mono:h12
 endfunction

augroup macvim
  au!
  au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()
augroup END
