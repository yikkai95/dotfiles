skip_global_compinit=1
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PATH="$PATH:$HOME/.local/bin/"
export PATH="$PATH:$HOME/.local/share/applications"
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
export FZF_DEFAULT_OPTS='--no-color'
export GOPATH="$HOME/.local/lib/go"
export GOBIN=$GOPATH/bin
export PATH="$PATH:$GOBIN"
#. $XDG_CONFIG_HOME/lf/icons
export EDITOR="/usr/bin/nvim"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export STARSHIP_CONFIG=$HOME/.config/starship.toml
export TERMINAL=/usr/bin/xst
export BROWSER=/usr/bin/brave
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
# export TASKRC=$XDG_CONFIG_HOME/taskwarrior/config
# export TASKDATA=$XDG_DATA_HOME/taskwarrior
# export PLAN9=/home/yikkai/repo/plan9 
# export PATH=$PATH:$PLAN9/bin
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
#export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
export LESSHISTFILE=-
export SSB_HOME="$XDG_DATA_HOME"/zoom
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
source $XDG_DATA_HOME/cargo/env
export PATH=$PATH:$XDG_DATA_HOME/solana/install/active_release/bin
export CALCHISTFILE=-
# npm installation to local, bypas sudo
PATH="$HOME/.local/bin:$PATH"
export TERM=vt100
# export npm_config_prefix="$HOME/.local"
export NODE_PATH=$(npm root --quiet -g)
source /usr/share/nvm/init-nvm.sh
. "/home/nnnyykk/.local/share/cargo/env"
export NO_COLOR=1
