export UPDATE_ZSH_DAYS=1
export LINES=10
##autoload -U colors && colors	# Load colors
 
# configuration
zle_highlight+=(paste:none) #remove hightlights when pasting
#DISABLE_AUTO_TITLE="true"
#
# mapping
bindkey -e
#bindkey -v
#bindkey -v "^?" backward-delete-char
#bindkey '^R' history-incremental-search-backward

# user aliases
alias gst="git status"
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias tmux='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'
alias fd='fd --ignore-file $XDG_CONFIG_HOME/fd/ignore'
alias rg='rg --ignore-file $XDG_CONFIG_HOME/ripgrep/ignore'
alias open=xdg-open 
alias ssh='TERM=xterm-256color ssh'

# user config
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt APPEND_HISTORY
HISTSIZE=10000
SAVEHIST=10000
export HISTFILE="$XDG_DATA_HOME"/zsh/history
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
fpath=($ZDOTDIR/completions $fpath)
autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;
setopt globdots
# bindkey -rpM viins '^['

source $ZDOTDIR/.zsh_functions
#source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
source $ZDOTDIR/plugins/fzf/fzf.zsh
source $ZDOTDIR/plugins/zsh-autopair/autopair.zsh
autopair-init
#export TERM=vt100

(cat ~/.cache/wal/sequences &)
# eval "$(starship init zsh)"


function pet-select() {
  BUFFER=$(pet search --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N pet-select
stty -ixon
bindkey '^s' pet-select


autoload -Uz add-zsh-hook

function xterm_title_precmd () {
        print -Pn -- '\\e\]2;%\~\\a'
}


function xterm_title_preexec () {
        print -Pn -- '\e]2;%~ %# ' && print -n -- "${(q)1}\a"
}

add-zsh-hook -Uz precmd xterm\_title\_precmd
add-zsh-hook -Uz preexec xterm\_title\_preexec

