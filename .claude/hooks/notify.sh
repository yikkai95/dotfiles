#!/bin/bash
INPUT=$(cat)
TYPE=$(echo "$INPUT" | jq -r '.notification_type // "unknown"')
MSG=$(echo "$INPUT"  | jq -r '.message // ""')

# Walk up the process tree to find the terminal's TTY
find_tty() {
  local pid=$PPID
  while [ "$pid" -gt 1 ]; do
    local tty
    tty=$(ps -p "$pid" -o tty= 2>/dev/null | tr -d ' ')
    if [ -n "$tty" ] && [ "$tty" != "??" ]; then
      echo "/dev/$tty"
      return
    fi
    pid=$(ps -p "$pid" -o ppid= 2>/dev/null | tr -d ' ')
  done
}

TTY_DEV=$(find_tty)
[ -z "$TTY_DEV" ] || [ ! -w "$TTY_DEV" ] && exit 0

send() {
  printf '%s' "$1" > "$TTY_DEV"
}

case "$TYPE" in
  permission_prompt)
    send "$(printf '\033]777;notify;Claude Code \xe2\x80\x94 Permission;%s\007' "${MSG:-Waiting for approval}")"
    ;;
  idle_prompt)
    send "$(printf '\033]777;notify;Claude Code;Waiting for your input\007')"
    ;;
  *)
    [ -n "$MSG" ] && send "$(printf '\033]9;%s\007' "$MSG")"
    ;;
esac
