export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR=/tmp

export ZDOTDIR="/Users/yikkai95/.config/zsh"
export rvm_path=$XDG_DATA_HOME/rvm
export rvm_config_path=$XDG_CONFIG_HOME/rvm/config
export PATH="$PATH:/Users/yikkai95/Library/Python/3.7/bin"
export PATH="$PATH:/Users/yikkai95/.local/bin/"

export GEMRC="$XDG_CONFIG_HOME/gemrc/config"
export GEM_HOME="$XDG_DATA_HOME/gem/ruby/$(ruby -e 'puts RbConfig::CONFIG["ruby_version"]')"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem/specs 
export PATH="$rvm_path/bin:$PATH"
export PATH="$GEM_HOME/bin:$PATH"
export TERM="xterm-256color"
export MDV_THEME=880.1331
export EDITOR="/usr/local/bin/nvim"
export HLEDGER_UI_EDITOR='/usr/local/bin/vim'

export LEDGER_FILE="/Users/yikkai95/Project/Ledger/2020/ledger-2020.ledger"
export SPOTIFY_CLIENT_ID=c0a57def7f774137b8803de6a7c93e33
export SPOTIFY_SECRET=b173e1bcbc2045f7a13ab036b7dac4ab
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export NNN_PLUG="o:fzopen;"

# Better view in psql
export PAGER=less
export LESS="-iMSx4 -RSFX -e"
export PSQL_HISTORY="$HOME/.cache/psql"

export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle 
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle 
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export VIMCONFIG="$XDG_CONFIG_HOME/vim"
export VIMINIT='let $MYVIMRC="$VIMCONFIG/config.vim" | source $MYVIMRC'
export CP_HOME_DIR="$XDG_DATA_HOME/cocoapods"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_DEVDIR="$XDG_CACHE_HOME/node-gyp"

export GOPATH="$HOME/.local/lib/go"
export GOBIN=$GOPATH/bin
export GO111MODULE=on
export PATH="$PATH:$GOBIN"

[[ -s "$rvm_path/scripts/rvm" ]] && source "$rvm_path/scripts/rvm" # Load RVM into a shell session *as a function*
