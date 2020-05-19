export UPDATE_ZSH_DAYS=1
export LINES=10

autoload -U colors && colors	# Load colors
 
# configuration
ZSH_COMPDUMP="$ZDOTDIR/dumps/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
zle_highlight+=(paste:none)
ZSH_CACHE_DIR=$ZDOTDIR/cache
DISABLE_AUTO_TITLE="true"

autoload -Uz add-zsh-hook
prompt_mimir_cmd() { $GOBIN/mimir }
add-zsh-hook precmd prompt_mimir_cmd
prompt_symbol='❯'
PROMPT="%(?.%F{magenta}.%F{red})${prompt_symbol}%f "

# mapping
bindkey -v
bindkey -M viins 'fd' vi-cmd-mode
bindkey -M visual 'fd' vi-cmd-mode
bindkey -v "^?" backward-delete-char

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

# user config
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt APPEND_HISTORY
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
_comp_options+=(globdots)		# Include hidden files.

source $ZDOTDIR/.zsh_functions
source $ZDOTDIR/plugins/fzf.zsh
source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# TODO: Temporary fix for slow man completion due to fasy syntax highlight plugins
FAST_HIGHLIGHT[chroma-man]=

# TODO: find way to bind thses functions
# bindkey -s '^o' 'lfcd\n'
# bindkey -s '^d' "$(dirname "$(fzf)")"
# bindkey -s '^f' "$(fzf)"

if [[ `uname` == "Darwin" ]]; then
  source $ZDOTDIR/.oh-my-zsh/plugins/fasd/fasd.plugin.zsh
  source /Users/yikkai95/.config/zsh/plugins/quicd.zsh
  source $HOME/.config/zsh/plugins/fzf.zsh
fi
