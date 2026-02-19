#!/bin/bash
INPUT=$(cat)

TYPE=$(echo "$INPUT" | python3 -c "import sys,json; print(json.load(sys.stdin).get('notification_type','unknown'))" 2>/dev/null)
MSG=$(echo "$INPUT"  | python3 -c "import sys,json; print(json.load(sys.stdin).get('message',''))"           2>/dev/null)
TYPE="${TYPE:-unknown}"
MSG="${MSG:-}"

notify() {
  osascript -e "display notification \"$1\" with title \"${2:-Claude Code}\" sound name \"${3:-Ping}\""
}

case "$TYPE" in
  permission_prompt)
    notify "${MSG:-Permission approval needed}" "Claude Code — Permission" "Ping"
    ;;
  idle_prompt)
    notify "Waiting for your input" "Claude Code" "Ping"
    ;;
  *)
    [ -n "$MSG" ] && notify "$MSG" "Claude Code" "Ping"
    ;;
esac
