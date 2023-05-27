xrdb $XDG_CACHE_HOME/wal/colors.Xresources
xsetroot -gray
xmodmap ~/.Xmodmap
xcape -e 'Control_L=Escape'
xset r rate 300 50 &
#setxkbmap us -option 'caps:ctrl_modifier'
#xrandr --output "HDMI-0" --auto --scale 1.0x1.0 --output eDP --off
sxhkd &
#fcitx &
dunst &			# dunst for notifications
#xwallpaper --zoom $XDG_DATA_HOME/bg
#$HOME/repo/dwm-bar/dwm_bar.sh & 
flameshot &
#feh --bg-scale ~/.local/share/bg 
#wal -R
#rio -term menu -virtuals 2
#exec /usr/local/bin/nscde
fcitx &
#picom -b
dbus-update-activation-environment DISPLAY XAUTHORITY
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
#./.xbmpwall.sh
while type dwm >/dev/null ; do dwm && continue || break ; done
