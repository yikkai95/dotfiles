# Setup fzf
# ---------
_fzf_compgen_path() {
  rg --hidden --files
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd -i -t d
}

if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$ZDOTDIR/plugins/fzf/completion.zsh" 2> /dev/null

# Key bindings
# ------------
# source "/usr/local/opt/fzf/shell/key-bindings.zsh"
