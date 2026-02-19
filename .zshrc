# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"

# Rust / Cargo
source "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/yikkai/.bun/_bun" ] && source "/Users/yikkai/.bun/_bun"

# Tools
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Dotfiles
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
