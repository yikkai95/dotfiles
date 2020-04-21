set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guifont=iAWriterMonoS-Regular:h16
packadd vimwiki
packadd goyo.vim
packadd limelight.vim
set lines = 44
set columns = 143
colorscheme typewriter
nmap <F12> :Goyo <bar> Limelight!!<CR>"
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
augroup myCmds
  au!
  autocmd VimEnter * silent !echo -ne "\e[5 q"
augroup END
