echo "/Users/yikkai95/Project/dotfiles/nvim/.config/nvim/ftplugin"
let g:markdown_fenced_languages = ['go', 'sh', 'json', 'javascript', 'sql', 'vim', 'html']
set sw=2 ts=2
packadd markdown-preview.nvim
"lua require'completion'.on_attach()

"inoremap <expr> <c-n> fzf#vim#complete#word({'source': 'cat ~/Repo/30k.txt', 'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 1 }})
"set completeopt=menuone,noinsert,noselect
"let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
vnoremap ,e :w !sh<cr>
