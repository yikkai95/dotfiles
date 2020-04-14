# 1. user function.zsh are stored at $ZSH/custom directory which will be autoload by oh-my-zsh.sh by default
#
#
# export ZSH="/Users/yikkai95/.config/zsh/.oh-my-zsh"
export UPDATE_ZSH_DAYS=1
export LINES=10

# autoload -U promptinit; promptinit

# plugins=(
#  osx
#  web-search
#  colored-man-pages
#  colorize
#  fasd
# )

# configuration
# ZSH_THEME="nord"
ZSH_COMPDUMP="$ZDOTDIR/dumps/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
DISABLE_AUTO_TITLE="true"

# source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/.oh-my-zsh/lib/git.zsh
source $ZDOTDIR/.oh-my-zsh/lib/theme-and-appearance.zsh
source $ZDOTDIR/.oh-my-zsh/custom/themes/nord.zsh-theme

# mapping
bindkey -v
bindkey -M viins 'fd' vi-cmd-mode
bindkey -M visual 'fd' vi-cmd-mode
bindkey -v "^?" backward-delete-char

# plugins
source $HOME/.config/zsh/plugins/fzf.zsh
source /Users/yikkai95/.config/zsh/plugins/quicd.zsh

# user aliases
alias gst="git status"
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias l="hledger-ui --theme=terminal -E"
alias ark="sh ./Scripts/ark.sh"
alias pwk="sh ./Scripts/pwk.sh"
alias p="pet exec --debug"
alias gcalcli='gcalcli --config-folder "$XDG_CONFIG_HOME/gcalcli"'
alias tmux='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'
alias ctags='ctags --options=$XDG_CONFIG_HOME/ctags/config'
alias fd='fd --ignore-file $XDG_CONFIG_HOME/fd/ignore'
local ret_status="%(?:%{$fg[yellow]%}=> :%{$fg[red]%}=> %s)"

# user config
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt APPEND_HISTORY
setopt globdots


# setting
fpath+=${ZDOTDIR:-~}/.zsh_functions
