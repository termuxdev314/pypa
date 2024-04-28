#!/bin/bash

LINUX="$1"
MANAGER="$2"

setup_debian() {
	apt-get update -qq
	apt-get install -y python3 python3-pip python3-venv pipx rust build-essential
	pipx install twine
	python3 -m pip install build
}

setup_archlinux() {
	pacman -Syy
	pacman --noconfirm --Sync python3 python3-pip pipx rust base-devel
	pipx install twine
	python3 -m pip install build
}

setup_termux_apt() {
	apt-get update -qq
	apt-get install -y python python-pip rust wget build-essential
	wget https://github.com/termuxdev314/termuxdev314.github.io/releases/download/v.1.0/python-repo.deb
	dpkg -i python-repo.deb
	rm -rf python-repo.deb
	apt-get update -qq
	apt-get install -y python-twine
	python -m pip install build
}

setup_termux_pacman() {
	pacman -Syy
	pacman --noconfirm -Sync python python-pip rust wget dpkg apt base-devel
	mkdir -p ${PREFIX}/etc/apt/sources.list.d/
	mkdir -p ${PREFIX}/etc/apt/preferences.d/
	mkdir -p ${PREFIX}/etc/apt/apt.conf.d/
	wget https://github.com/termuxdev314/termuxdev314.github.io/releases/download/v.1.0/python-repo.deb
	dpkg -i python-repo.deb
	rm -rf python-repo.deb
	apt-get update -qq
	apt-get install -y python-twine
	python -m pip install build
}

case "${LINUX}" in
	linux|--linux|-l)
		case "${MANAGER}" in
			apt|--apt|-a)
				setup_debian ;;
			pacman|--pacman|-p)
				setup_archlinux ;;
			*)
				echo "Wrong Manager" ;;
		esac
		;;
	termux|--termux|-t)
		case "${MANAGER}" in
			apt|--apt|-a)
				setup_termux_apt ;;
			pacman|--pacman|-p)
				setup_termux_pacman ;;
			*)
				echo "Wrong Manager" ;;
		esac
		;;
	-la)
		setup_debian ;;
	-lp)
		setup_archlinux ;;
	-ta)
		setup_termux_apt ;;
	-tp)
		setup_termux_pacman ;;
	*)
		echo "Wrong Operant" ;;
esac
