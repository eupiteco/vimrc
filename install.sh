#!/bin/sh

_header() {
 	echo "==============================="
	echo " $1ing vim ricing              "
 	echo "==============================="
	echo
}

_install() {
	_header "Install"
	[ -d ~/.vim ] || mkdir ~/.vim
	cp -fv basic-config.vim ~/.vimrc
	cp -rfv plugins-folder/* ~/.vim
}

_usage() {
	echo "i | install	Install these files to your system"
	echo "u | update	Update this repo with local files"
}

_update() {
	_header "Updat"
	cp -fv ~/.vimrc basic-config.vim
	cp -rfv ~/.vim/* plugins-folder
}

case $1 in
	i | install) _install ;;
	u | update) _update ;;
	* ) _usage ;;
esac
