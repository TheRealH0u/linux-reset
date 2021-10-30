#!/bin/bash

# Dir where the install should start
dir="/home/hou"

templates(){
	# Copying templates into $dir/Templates
		echo -e "\n\033[1mTemplates are at HOME\033[0m"
		cp Templates -r $dir/
}

zsh(){
	# Copying .zshrc into user and root
		echo -e "\n\033[1mYour .zshrc is back!\033[0m"
		cp zshrc $dir/.zshrc 
		sudo cp zshrc /root/.zshrc
}

tools(){
	echo -e "\n\033[1m\033[4mInstalling Tools033[0m"
	# VOLATILITY3
		echo -e "\n\033[1mInstalling Volatility3\033[0m"
		mkdir $dir/Tools
		git clone https://github.com/volatilityfoundation/volatility3.git $dir/Tools/Volatility3
		cd $dir/Tools/Volatility3
		sudo python3 setup.py install
		echo -e "\n\033[1mVolatility3 installed\033[0m"
	# TOR BROWSER
		echo -e "\n\033[1mInstalling Tor browser\033[0m"
		sudo curl https://dist.torproject.org/torbrowser/10.5.10/tor-browser-linux64-10.5.10_en-US.tar.xz --output $dir/Tools/tor-browser.tar.xz
		mkdir $dir/Tools/Tor
		echo -e "\n\033[1m- - - EXTRACTING DO NOT EXIT - - -\033[0m"
		tar -xf $dir/Tools/tor-browser.tar.xz -C $dir/Tools/Tor --strip-components 1
		echo -e "\n\033[1m- - - EXTRACTED - - -\033[0m"
		echo -e "\n\033[1mTor browser installed\033[0m"
	echo -e "\n\033[1m\033[4mTools installed033[0m"
}

programs(){
	echo -e "\n\033[1m\033[4mInstalling programs033[0m"
	# PFF-TOOLS
		echo -e "\n\033[1mInstalling pff-tools\033[0m"
		sudo apt install pff-tools -y
		echo -e "\n\033[1mpff-tools installed\033[0m"
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
	# GCC and G++
		echo -e "\n\033[1mInstalling gcc and g++\033[0m"
		sudo apt install gcc && sudo apt install g++
		echo -e "\n\033[1mgcc and g++ installed\033[0m"
	# GDB
		echo -e "\n\033[1mInstalling gdb\033[0m"
		sudo apt install gdb
		echo -e "\n\033[1mgdb installed\033[0m"
	echo -e "\n\033[1m\033[4mPrograms installed033[0m"
}

services(){
	echo -e "\n\033[1m\033[4mInstalling services\033[0m"
	# TOR
		echo -e "\n\033[1mInstalling tor service\033[0m"
		sudo apt install tor -y
		echo -e "\n\033[1mtor service installed\033[0m"
	echo -e "\n\033[1m\033[4mServices installed\033[0m"
}

updg(){
	#Update, upgrade and dist-upgrade
	echo -e "\n\033[1m\033[4mUPGRADE/UPDATE\033[0m"
	sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
	echo -e "\n\033[1m\033[4mUpgraded/Updated\033[0m"
}

#echo -e '\033[1mYOUR_STRING\033[0m'
echo -e "\033[1mNew Linux installation (ctrl+C to Cancel)\033[0m"
echo -e "Installing into \033[1m$dir\033[0m"
for i in `seq 9 -1 0`;
do
 echo -ne "Starting in: \033[1m$i\033[0m\\r"
 sleep 1
done
echo -e "\n\033[1m- - - Starting - - -\033[0m"
updg
templates
zsh
tools
programs
services
updg
echo -e "\n\033[1m- - - Finished - - -\033[0m"
