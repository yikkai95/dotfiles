lua << EOF
vim.cmd([[let g:terraform_fmt_on_save=1]])
vim.cmd([[let g:terraform_align=1]])
EOF
nnoremap <localleader>ti :!terraform init<CR>
nnoremap <localleader>tv :!terraform validate<CR>
nnoremap <localleader>tp :!terraform plan<CR>
nnoremap <localleader>taa :!terraform apply -auto-approve<CR>
