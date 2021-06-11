"cd $HOME/Documents/Wiki
echo "/Users/yikkai95/Project/dotfiles/nvim/.config/nvim/ftplugin"
let g:markdown_fenced_languages = ['go', 'sh', 'json', 'javascript', 'sql', 'vim', 'html']
set sw=2 ts=2
packadd limelight.vim
packadd goyo.vim
packadd vim-litecorrect
packadd vim-pencil
packadd vim-wheel
packadd markdown-preview.nvim
lua require'completion'.on_attach()
" function! Complete( findstart, base )
"   if a:findstart
"     let line = getline('.')
"     let start = col('.') - 1
"     while start > 0 && line[start - 1] =~ '[A-Za-z_]'
"       let start -= 1
"     endwhile
"     return start
"   else
"     let matches = systemlist('rg -N ' .a:base . '~/Repo/30k.txt')
"     return matches
"   endif
" endfunction

call litecorrect#init()
"call lexical#init()
"let g:lexical#spell = 1         " 0=disabled, 1=enabled
"let g:lexical#dictionary = ['~/Repo/30k.txt']
"
"
inoremap <expr> <c-n> fzf#vim#complete#word({'source': 'cat ~/Repo/30k.txt', 'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 1 }})
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
vnoremap ,e :w !sh<cr>
