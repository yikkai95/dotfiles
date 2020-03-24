colorscheme typewriter
set lines=999 columns=9999
set guifont=Menlo\ Regular:h14

nnoremap <Leader>xb yi`jp:. !zsh<cr>
nnoremap <Leader>xv <:execute getline(".")<cr>
