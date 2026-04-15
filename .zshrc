# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# PATH
export PATH="$HOME/.local/bin:$HOME/go/bin:$PATH"
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"

# Rust / Cargo
source "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/yikkai/.bun/_bun" ] && source "/Users/yikkai/.bun/_bun"

# Completions
fpath+=(~/.config/hcloud/completion/zsh)
autoload -Uz compinit; compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Tools
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Dotfiles
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
 
# fzf
source <(fzf --zsh)


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/yikkai/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export LEDGER_FILE="$HOME/Documents/finance/ledger.journal"
# pnpm end

# gh-stars — async, at most once per day per shell-start
_gh_stars_daily() {
  local dir="$HOME/.local/share/gh-stars"
  local stamp="$dir/.last-sync"
  local today; today=$(date -u +%Y-%m-%d)
  [[ -r "$stamp" && "$(<"$stamp")" == "$today" ]] && return
  command -v gh-stars >/dev/null 2>&1 || return
  mkdir -p "$dir"
  (
    if gh-stars sync >>"$dir/sync.log" 2>&1; then
      print -r -- "$today" >|"$stamp"
    else
      osascript -e 'display notification "sync failed — check ~/.local/share/gh-stars/sync.log" with title "gh-stars"' 2>/dev/null
    fi
  ) &!
}
_gh_stars_daily

# Ctrl+V: if clipboard has an image, save it and insert the file path.
# Otherwise, fall back to quoted-insert (default ^V behavior).
_clip-img-paste() {
  local path
  path=$(/Users/yikkai/.local/bin/clip-img 2>/dev/null)
  if [[ $? -eq 0 && -n "$path" ]]; then
    LBUFFER+="$path"
  else
    zle quoted-insert
  fi
}
zle -N _clip-img-paste
bindkey '^V' _clip-img-paste
