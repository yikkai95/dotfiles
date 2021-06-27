skip_global_compinit=1
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PATH="$PATH:$HOME/.local/bin/"
export PATH="$PATH:$HOME/.local/bin/statusbar"
export PATH="$PATH:/usr/local/sbin"

export LANGUAGE="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8" 
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export CLICOLOR=1
export PAGER=less
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export FZF_DEFAULT_COMMAND='rg --hidden --files --ignore-file $XDG_CONFIG_HOME/ripgrep/ignore'
export GOPATH="$HOME/.local/lib/go"
export GOBIN=$GOPATH/bin
export PATH="$PATH:$GOBIN"
. $XDG_CONFIG_HOME/lf/icons
export EDITOR="/usr/bin/nvim"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export STARSHIP_CONFIG=$HOME/.config/starship.toml
export TERMINAL=/usr/local/bin/st
export EDITOR=/usr/bin/nvim
