export ZSH="/Users/yikkai95/.oh-my-zsh"
# Use spaceship theme

# ZSH_THEME="spaceship"
ZSH_THEME="dracula"
autoload -U promptinit; promptinit
export UPDATE_ZSH_DAYS=1

# Enable autocorrection
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  osx
  web-search
  colored-man-pages
  colorize
  fasd
)

source $ZSH/oh-my-zsh.sh

# vim binding
bindkey -v
bindkey -M viins 'fd' vi-cmd-mode
bindkey -M visual 'fd' vi-cmd-mode


# Auto Correcting
unsetopt correct_all

# vim cursor
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'
#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#   fi
# }
# zle -N zle-keymap-select
# zle-line-init() {
#     zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#     echo -ne "\e[5 q"
# }
# zle -N zle-line-init
# echo -ne '\e[5 q' # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Backspace problem when entering insert mode from normal mode
bindkey -v "^?" backward-delete-char

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_CTRL_T_COMMAND='rg --hidden --files'
export FZF_ALT_C_COMMAND='fd -i -t d .'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
'
_fzf_compgen_dir() {
    fd --hidden --follow . "$1"
}

_fzf_compgen_path() {
    rg --hidden --files "$1"
}

export LINES=10

# user functions
function gdf() {
  git diff --name-only | head -$1 | tail -1 | xargs -I _ sh -c 'git diff _'
}

function ga() {
  git diff --name-only | head -$1 | tail -1 | xargs -I _ sh -c 'git add _'
}

# user aliases
alias gst="git status"
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconfig='vim ~/.vimrc'
alias update="source ~/.zshrc"
alias pro="cd documents/project/"
alias opensource="cd documents/project/Open\ Source"
alias l="hledger-ui --theme=terminal -E"
alias t="todotxt-machine --config /Users/yikkai95/.config/.todotxt-machinerc"
alias ark="sh ./Scripts/ark.sh"
alias pwk="sh ./Scripts/pwk.sh"
alias p="pet exec --debug"
local ret_status="%(?:%{$fg[yellow]%}=> :%{$fg[red]%}=> %s)"

# user config
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt APPEND_HISTORY

function prev() {
  PREV=$(fc -lrn | head -n 1)
  sh -c "pet new `printf %q "$PREV"`"
}

fpath+=${ZDOTDIR:-~}/.zsh_functions

source ~/.zshenv
