let current_compiler = 'go'
" CompilerSet makeprg=go\ build
if filereadable("makefile") || filereadable("Makefile")
  CompilerSet makeprg=make
else
  CompilerSet makeprg=go\ build\ cmd/app/main.go
endif
" https://raw.githubusercontent.com/fatih/vim-go/master/compiler/go.vim
CompilerSet errorformat =%-G#\ %.%#
CompilerSet errorformat+=%-G%.%#panic:\ %m
CompilerSet errorformat+=%Ecan\'t\ load\ package:\ %m
CompilerSet errorformat+=%A%\\%%(%[%^:]%\\+:\ %\\)%\\?%f:%l:%c:\ %m
CompilerSet errorformat+=%A%\\%%(%[%^:]%\\+:\ %\\)%\\?%f:%l:\ %m
CompilerSet errorformat+=%C%*\\s%m
CompilerSet errorformat+=%-G%.%#
