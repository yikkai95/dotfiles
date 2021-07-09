REPO = $HOME/repo
EXERCISM_TOKEN = 8d4c028e-86bd-437c-abae-d0c12846282b

.PHONY: zsh
zsh:
	mkdir -p $XDG_CACHE_HOME/zsh
	mkdir -p $XDG_DATA_HOME/zsh
	touch $XDG_DATA_HOME/zsh/history
	chmod a+x $XDG_DATA_HOME/zsh/history

.PHONY: bluetooth
bluetooth:
	#https://wiki.archlinux.org/title/Bluetooth_headset#Headset_via_Bluez5/PulseAudio
	#bluez 5.58 not working
	sudo pacman -S pulseaudio-alsa pulseaudio-bluetooth bluez-utils
	sudo systemctl enable bluetooth
	sudo systemctl start bluetooth

.PHONY: go-font
go-font: 
	#https://i.redd.it/14j03vlkubyz.jpg
	#https://blog.golang.org/go-fonts
	sudo pacman -S ttf-go-mono-git


.PHONY: node npm
node:
	yay npm node

calc:
	yay calc

spotify:
	#https://www.reddit.com/r/archlinux/comments/jlhclt/yay_error_gpg_keyserver_receive_failed_no_name/
	curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -
	yay spotify


.PHONY: exercism
exercism: 
	yay exercism
	exercism configure --token=$EXERCISM_TOKEN
	exercism configure -w $REPO/exercism

.PHONY: stow
stow: #stow all
	fd -td -x stow -t $$HOME {}
