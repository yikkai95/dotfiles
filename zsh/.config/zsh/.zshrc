export UPDATE_ZSH_DAYS=1
export LINES=10
autoload -U colors && colors	# Load colors
export LC_ALL="en_US.UTF-8"
 
# configuration
ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump-$HOST-$ZSH_VERSION"
zle_highlight+=(paste:none) #remove hightlights when pasting
#DISABLE_AUTO_TITLE="true"
#
# mapping
bindkey -v
bindkey -v "^?" backward-delete-char
bindkey '^R' history-incremental-search-backward

# user aliases
alias gst="git status"
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias gcalcli='gcalcli --config-folder "$XDG_CONFIG_HOME/gcalcli"'
alias tmux='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'
alias fd='fd --ignore-file $XDG_CONFIG_HOME/fd/ignore'
alias rg='rg --ignore-file $XDG_CONFIG_HOME/ripgrep/ignore'
alias -g ff='$(rg --hidden --files | fzf)'
alias -g dd='$(fd -i -t d --ignore-file $XDG_CONFIG_HOME/fd/ignore | fzf)'

# user config
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt APPEND_HISTORY
export HISTFILE="$XDG_DATA_HOME"/zsh/history
autoload -Uz compinit && compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$HOST-$ZSH_VERSION"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
setopt globdots

source $ZDOTDIR/.zsh_functions
source $HOME/repo/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
#source $ZDOTDIR/plugins/fzf/fzf.zsh

eval "$(starship init zsh)"
fpath=(/Users/yikkai95/.config/zsh/completions $fpath)
