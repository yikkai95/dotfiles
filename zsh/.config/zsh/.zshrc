export UPDATE_ZSH_DAYS=1
export LINES=10
autoload -U colors && colors	# Load colors
 
# configuration
ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump-$HOST-$ZSH_VERSION"
zle_highlight+=(paste:none) #remove hightlights when pasting
#DISABLE_AUTO_TITLE="true"
#
# mapping
bindkey -v
# bindkey -M viins 'fd' vi-cmd-mode
# bindkey -M visual 'fd' vi-cmd-mode 
bindkey -v "^?" backward-delete-char
bindkey '^R' history-incremental-search-backward

# user aliases
alias gst="git status"
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias l="hledger-ui --theme=terminal -E"
alias p="pet exec --debug"
alias gcalcli='gcalcli --config-folder "$XDG_CONFIG_HOME/gcalcli"'
alias tmux='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'
alias ctags='ctags --options=$XDG_CONFIG_HOME/ctags/config'
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
source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZDOTDIR/plugins/fzf/fzf.zsh

n() { $EDITOR $HOME/Documents/Wiki/index.md } 
nls() { ls -c $HOME/Documents/Wiki | grep "$*" } 
# t() { rg "$*" "$HOME/Documents/Wiki/todo/index.md" }
te() { cat -n "$HOME/Documents/Wiki/todo/index.md" | fzf | awk '{print $1}' | xargs -I _ nvim -O "$HOME/Documents/Wiki/todo/index.md" +_  "$HOME/Documents/Wiki/todo/done.md"}
ta() { echo "$*" >> "$HOME/Documents/Wiki/todo/index.md"  }

# autoload -U promptinit; promptinit
# prompt spaceship

eval "$(starship init zsh)"
#. $XDG_DATA_HOME/lscolors.sh
alias ml='cat $XDG_CACHE_HOME/bf | fzf | xargs -o nvim' #list bookmark file
ma() { grep -Fxq $* $XDG_CACHE_HOME/bf || echo $* >> $XDG_CACHE_HOME/bf } #add file to bookmark
alias pb='nvim $XDG_CACHE_HOME/pb.md' #pastebin
alias conf='lf $XDG_CONFIG_HOME'
alias t='txtnish'
alias re='record'
alias b='nvim $XDG_DATA_HOME/bookmark'
fpath=(/Users/yikkai95/.config/zsh/completions $fpath)
