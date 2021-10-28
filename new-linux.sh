#!/bin/bash

#Dir where the install should start
dir="/home/hou"

templates(){
	# Copying templates into $dir/Templates
	echo -e "\n\033[1m- Templates are at HOME\033[0m"
	cp Templates -r $dir/
}

zsh(){
	# Copying .zshrc into user and root
	echo -e "\n\033[1m- Your .zshrc is back!\033[0m"
	cp zshrc $dir/.zshrc 
	sudo cp zshrc /root/.zshrc
}

programs(){
	# VOLATILITY3
		echo -e "\n\033[1m- Installing your favorite Tools\033[0m"
		echo -e "\n\033[1mInstalling Volatility3\033[0m"
		mkdir $dir/Tools
		git clone https://github.com/volatilityfoundation/volatility3.git $dir/Tools/Volatility3
		cd $dir/Tools/Volatility3
		sudo python3 setup.py install
		echo -e "\n\033[1mVolatility3 installed\033[0m"
	# PFF-TOOLS
		echo -e "\n\033[1mInstalling pff-tools\033[0m"
		sudo apt install pff-tools -y
		echo -e "\n\033[1mpff-tools installed\033[0m"
	# TOR BROWSER
		echo -e "\n\033[1mInstalling Tor browser\033[0m"
		sudo curl https://dist.torproject.org/torbrowser/10.5.10/tor-browser-linux64-10.5.10_en-US.tar.xz --output $dir/Tools/tor-browser.tar.xz
		mkdir $dir/Tools/Tor
		echo -e "\n\033[1m- - - EXTRACTING DO NOT EXIT - - -\033[0m"
		tar -xf $dir/Tools/tor-browser.tar.xz -C $dir/Tools/Tor --strip-components 1
		echo -e "\n\033[1m- - - EXTRACTED - - -\033[0m"
		echo -e "\n\033[1mTor browser installed\033[0m"
	# VIM
		echo -e "\n\033[1mInstalling Vim\033[0m"
		sudo apt install vim
		echo -e "\n\033[1mVim installed\033[0m"
	# GIT
		echo -e "\n\033[1mInstalling git\033[0m"
		sudo apt install git
		echo -e "\n\033[1mgit installed\033[0m"
	# Dokcer and docker-compose
		echo -e "\n\033[1mInstalling docker and docker-compose\033[0m"
		sudo apt install docker && sudo apt install docker-compose
		echo -e "\n\033[1mdocker and docker-compose installed\033[0m"
}

services(){
	# Services
	echo -e "\n\033[1m- Installing services that you might like\033[0m"
	echo -e "\n\033[1m- - Tor service\033[0m"
	sudo apt install tor -y
}

updg(){
	#Update, upgrade and dist-upgrade
	sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade
}

#echo -e '\033[1mYOUR_STRING\033[0m'
echo -e "\033[1mNew Linux installation (ctrl+C to Cancel)\033[0m"
echo -e "Installing into \033[1m$dir\033[0m"
for i in `seq 5 -1 1`;
do
 echo -ne "Starting in: \033[1m$i\033[0m\\r"
 sleep 1
done
echo -e "\n\033[1m- - - Starting - - -\033[0m"

updg
templates
zsh
programs
services
updg
