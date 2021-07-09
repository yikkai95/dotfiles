xrdb $HOME/.Xresources
xset r rate 300 50 &
xmodmap ~/.Xmodmap
xcape -e 'Control_L=Escape'
xrandr --output "HDMI-0" --auto --scale 1.0x1.0 --output eDP --off
sxhkd &
fcitx &
dunst &			# dunst for notifications
xwallpaper --zoom $XDG_DATA_HOME/bg
while type dwm >/dev/null ; do dwm && continue || break ; done
