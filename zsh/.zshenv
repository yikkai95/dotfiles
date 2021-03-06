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
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_DEVDIR="$XDG_CACHE_HOME/node-gyp"
export FZF_DEFAULT_COMMAND='rg --hidden --files --ignore-file $XDG_CONFIG_HOME/ripgrep/ignore'
export GOPATH="$HOME/.local/lib/go"
export GOBIN=$GOPATH/bin
export PATH="$PATH:$GOBIN"

. $XDG_CONFIG_HOME/lf/icons
if [[ `uname` == "Darwin" ]]; then
  export HLEDGER_UI_EDITOR='/usr/local/bin/vim'
  export EDITOR="/usr/local/bin/nvim"
  export XDG_RUNTIME_DIR=/tmp
  export rvm_path=$XDG_DATA_HOME/rvm
  export rvm_config_path=$XDG_CONFIG_HOME/rvm/config
  export PATH="$PATH:/Users/yikkai95/Library/Python/3.7/bin"
  export PATH="$PATH:/Users/yikkai95/Library/Python/3.9/bin"
  export GEMRC="$XDG_CONFIG_HOME/gemrc/config"
  export GEM_HOME="$XDG_DATA_HOME/gem/ruby/$(ruby -e 'puts RbConfig::CONFIG["ruby_version"]')"
  export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem/specs
  export PATH="$rvm_path/bin:$PATH"
  export PATH="$GEM_HOME/bin:$PATH"
  #export TERM="xterm-256color"
  export TERM="screen-256color"
  export LESS="-iMSx4 -RSFX -e"
  export PSQL_HISTORY="$HOME/.cache/psql/.psql_history"
  export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
  export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
  export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
  export CP_HOME_DIR="$XDG_DATA_HOME/cocoapods"
  export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
  export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
else 
  export EDITOR="/usr/bin/nvim"
  export GTK_IM_MODULE=fcitx
  export QT_IM_MODULE=fcitx
  export XMODIFIERS=@im=fcitx
fi

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export ANDROID_HOME=/usr/local/share/android-sdk
export PATH=$PATH:$PLAN9/bin
export PATH=$PATH:$HOME/.cpan/build
. "$HOME/.cargo/env"
export PATH=$XDG_DATA_HOME/solana/install/active_release/bin:$PATH
