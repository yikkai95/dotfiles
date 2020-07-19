#!/bin/sh

set echo off
IFS=$'\r\n'
filename="/Users/yikkai95/.config/pomodoro/task"
delimiter="-"
end='END'
while true; do
  lines=`cat $filename`
  for line in $lines; do
    if [ $line = $end ]; then
      break 2
    fi
    A="$(cut -d'-' -f1 <<< $line)"
    B="$(cut -d'-' -f2 <<< $line | tr -d '[:space:]')"

    noti -t "$A" pomodoro $B

    gsed -i 1d $filename
    < /dev/tty vim -o "$filename"
    break
  done
done
