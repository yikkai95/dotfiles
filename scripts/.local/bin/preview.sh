#!/bin/sh
case "$1" in
    # *.pdf) pdftotext "$1" -;;
    # *.jpg|*.png) pqiv -ci "$1";;
    *png|*jpg|*jpe|*jpeg|*gif)
      curl -sL "$1" > "/tmp/$(echo "$1" | sed "s/.*\///;s/%20/ /g")" && pqiv -i "/tmp/$(echo "$1" | sed "s/.*\///;s/%20/ /g")" ;;
    *) open "$1";;
    # *) qlmanage -p "$1";;
esac
