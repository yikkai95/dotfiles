xrdb $HOME/.Xresources
xset r rate 300 50 &
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'
setxkbmap -option  altwin:swap_lalt_lwin
sxhkd &
fcitx &
dunst &			# dunst for notifications
while type dwm >/dev/null ; do dwm && continue || break ; done
