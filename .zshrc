# Cache expensive `eval "$(tool init)"` output to static files.
# Regenerates when the tool binary is newer than the cache.
_zcache_dir="$HOME/.cache/zsh"
[[ -d "$_zcache_dir" ]] || mkdir -p "$_zcache_dir"
_zcache() {
  # usage: _zcache <name> <freshness-source> <command...>
  local cache="$_zcache_dir/$1.zsh"
  local src="$2"; shift 2
  # Skip if the source binary is missing (tool uninstalled)
  [[ -z "$src" || ! -e "$src" ]] && return
  if [[ ! -s "$cache" || "$src" -nt "$cache" ]]; then
    local tmp="$cache.tmp"
    # Write to a temp file first; only swap into place if the init succeeded
    # and produced non-empty output — prevents partial/corrupt caches.
    if "$@" >| "$tmp" && [[ -s "$tmp" ]]; then
      mv -f "$tmp" "$cache"
    else
      rm -f "$tmp"
      [[ -s "$cache" ]] || return
    fi
  fi
  source "$cache"
}

# Homebrew (must run first — sets PATH for the rest)
_zcache brew /opt/homebrew/bin/brew /opt/homebrew/bin/brew shellenv zsh

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
autoload -Uz compinit
# Only regenerate ~/.zcompdump once per day; skip security audit (-C) for speed
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Tools
_zcache zoxide $commands[zoxide] zoxide init zsh
_zcache starship $commands[starship] starship init zsh

# Dotfiles
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
 
# fzf
_zcache fzf $commands[fzf] fzf --zsh


export NVM_DIR="$HOME/.nvm"
# Lazy-load nvm: shims replace themselves with the real thing on first call
_nvm_lazy_load() {
  unset -f nvm node npm npx yarn pnpm 2>/dev/null
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}
for _cmd in nvm node npm npx yarn; do
  eval "${_cmd}() { _nvm_lazy_load; ${_cmd} \"\$@\"; }"
done
unset _cmd

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
# _clip-img-paste() {
#   local path
#   path=$(/Users/yikkai/.local/bin/clip-img 2>/dev/null)
#   if [[ $? -eq 0 && -n "$path" ]]; then
#     LBUFFER+="$path"
#   else
#     zle quoted-insert
#   fi
# }
# zle -N _clip-img-paste
# bindkey '^V' _clip-img-paste
