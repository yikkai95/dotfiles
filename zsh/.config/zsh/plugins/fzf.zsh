export FZF_DEFAULT_COMMAND='rg --hidden --files --ignore-file $XDG_CONFIG_HOME/ripgrep/ignore'
export FZF_CTRL_T_COMMAND='rg --hidden --files --ignore-file $XDG_CONFIG_HOME/ripgrep/ignore'
export FZF_ALT_C_COMMAND='fd -i -t d --ignore-file $XDG_CONFIG_HOME/fd/ignore .'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
'
# _fzf_compgen_dir() {
#     fd --hidden --follow --ignore-file $XDG_CONFIG_HOME/fd/ignore . "$1"
# }
# 
# _fzf_compgen_path() {
#     rg --hidden --files --ignore-file $XDG_CONFIG_HOME/ripgrep/ignore "$1"
# }
