---
name: dot-sync
description: Scan $HOME and ~/.config for new dotfiles, check for sensitive info, then add/commit/push to the dotfiles repo.
---

You are helping the user manage their dotfiles repo using the `dot` alias (`git --git-dir=$HOME/.dotfiles --work-tree=$HOME`).

## Step 1 — Find new untracked files

Run this to discover untracked files (limiting to $HOME top-level and ~/.config):

```bash
git --git-dir=$HOME/.dotfiles --work-tree=$HOME status -u --short 2>/dev/null | grep '^?' | awk '{print $2}' | grep -E '^\.config/|^\.[a-zA-Z]' | grep -v -E '\.DS_Store|\.Trash|\.cache|\.cargo|\.rustup|\.bun|\.zsh_history|\.zsh_sessions|\.zcompdump|\.viminfo|\.ssh|\.local|\.claude\.json|\.claude/'
```

Show the user the list of untracked files found.

If nothing is found, also check for modified tracked files:
```bash
git --git-dir=$HOME/.dotfiles --work-tree=$HOME status --short
```

## Step 2 — Ask the user which files to add

Use AskUserQuestion to let the user pick which files they want to track. Present the found files as options. If there are more than 4, ask in batches or list them and let the user reply with filenames.

## Step 3 — Scan for sensitive information

For each file the user selected, read its full contents and check for:
- API keys or tokens (patterns like `sk-`, `ghp_`, `xox`, `AKIA`, `Bearer `)
- Passwords or secrets (`password=`, `secret=`, `token=`, `api_key=`)
- Hardcoded IPs or private hostnames
- Private keys (`-----BEGIN`)
- Any `export VAR=<value>` where the value looks like a secret (long random string)

Report findings clearly. If anything suspicious is found:
- Show the user exactly what was found and on which line
- Ask if they want to redact it before committing, skip the file, or proceed anyway

## Step 4 — Add files

For each approved file, run:
```bash
git --git-dir=$HOME/.dotfiles --work-tree=$HOME add ~/<filepath>
```

## Step 5 — Commit

Ask the user for a commit message, or suggest one based on which files were added (e.g. "add starship config" or "update zshrc and alacritty").

Then commit:
```bash
git --git-dir=$HOME/.dotfiles --work-tree=$HOME commit -m "<message>"
```

## Step 6 — Push

```bash
git --git-dir=$HOME/.dotfiles --work-tree=$HOME push
```

Confirm success and show the GitHub URL: https://github.com/yikkai95/dotfiles
