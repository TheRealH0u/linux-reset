#! /bin/bash

sudo apt update
sudo apt install -y python3-scrapy python3-pwntools pff-tools docker docker-compose g++ gcc gdb ltrace strace foremost steghide exiftool dive sshuttle gimp inkscape flameshot remmina ranger htop redshift pdfcrack fcrackzip libwine pdf-parser lynx golang-go albert seclists
sudo gem install zsteg
TEMP_DEB="$(mktemp)" &&
wget -O "$TEMP_DEB" 'https://code.soundsoftware.ac.uk/attachments/download/2822/sonic-visualiser_4.5_amd64.deb' &&
sudo dpkg -i "$TEMP_DEB"
rm -f "$TEMP_DEB"


GENY="genymotion.bin"
wget -O "$GENY" https://dl.genymotion.com/releases/genymotion-3.3.0/genymotion-3.3.0-linux_x64.bin
chmod +x "$GENY"
bash "$GENY"

# Installing python tools
pip3 install flask-unsign stegoveritas

# Installing go. .zshrc must be the one in files/home
go install github.com/sw33tLie/sns@latest
GO111MODULE=on go install github.com/jaeles-project/gospider@latest

# Installing tools
mkdir $HOME/Tools
TOOLS=$HOME/Tools

# APK
mkdir $TOOLS/apk
git -C $TOOLS/apk clone https://github.com/Ganapati/RsaCtfTool.git

# Crypto
mkdir $TOOLS/crypto
git -C $TOOLS/crypto clone https://github.com/Ganapati/RsaCtfTool.git
git -C $TOOLS/crypto clone https://github.com/Ciphey/Ciphey.git
git -C $TOOLS/crypto clone https://github.com/AonCyberLabs/PadBuster.git
git -C $TOOLS/crypto clone https://github.com/bwall/HashPump.git
git -C $TOOLS/crypto clone https://github.com/mwielgoszewski/python-paddingoracle.git
git -C $TOOLS/crypto clone https://github.com/pablocelayes/rsa-wiener-attack.git
git -C $TOOLS/crypto clone https://github.com/ALSchwalm/foresight.git
git -C $TOOLS/crypto clone https://github.com/gat3way/hashkill.git
git -C $TOOLS/crypto clone https://github.com/bwall/HashPump.git
git -C $TOOLS/crypto clone https://github.com/mheistermann/HashPump-partialhash.git
git -C $TOOLS/crypto clone https://github.com/keyunluo/pkcrack.git
git -C $TOOLS/crypto clone https://github.com/hellman/xortool.git

# Forensics
mkdir $TOOLS/forensics
git -C $TOOLS/forensics clone https://github.com/volatilityfoundation/volatility3.git
git -C $TOOLS/forensics clone https://github.com/jesparza/peepdf.git
git -C $TOOLS/forensics clone https://github.com/Aorimn/dislocker.git

# Web
mkdir $TOOLS/web
# Web-Scanners
mkdit $TOOLS/web/scanners
git -C $TOOLS/web/scanners clone https://github.com/thewhiteh4t/FinalRecon.git
git -C $TOOLS/web/scanners clone https://github.com/urbanadventurer/WhatWeb.git
git -C $TOOLS/web/scanners clone https://github.com/RustScan/RustScan.git
git -C $TOOLS/web/scanners clone https://github.com/internetwache/GitTools.git
git -C $TOOLS/web/scanners clone https://github.com/swisskyrepo/SSRFmap.git
git -C $TOOLS/web/scanners clone https://github.com/TheRook/subbrute.git
# Web-Attacks
mkdir $TOOLS/web/attacks
git -C $TOOLS/web/attacks clone https://github.com/commixproject/commix.git
git -C $TOOLS/web/attacks clone https://github.com/Hex27/mongomap.git
git -C $TOOLS/web/attacks clone https://github.com/s0md3v/XSStrike.git
git -C $TOOLS/web/attacks clone https://github.com/nicholasaleks/CrackQL.git
# Web-Cookies
mkdir $TOOLS/web/cookies
git -C $TOOLS/web/cookies clone https://github.com/ticarpi/jwt_tool.git
# Web-Crawler
mkdir $TOOLS/web/crawler
git -C $TOOLS/web/crawler clone https://github.com/dhondta/webgrep.git
# Web-TLSSSL
mkdir $TOOLS/web/TLSSSL
git -C $TOOLS/web/TLSSSL clone https://github.com/moxie0/sslstrip.git
git -C $TOOLS/web/TLSSSL clone https://github.com/tls-attacker/TLS-Attacker.git

# OSINT
mkdir $TOOLS/osint
git -C $TOOLS/osint clone https://github.com/galihap76/collector.git
git -C $TOOLS/osint clone https://github.com/sherlock-project/sherlock.git
git -C $TOOLS/osint clone https://github.com/jkakavas/creepy.git
git -C $TOOLS/osint clone https://github.com/khast3x/h8mail.git

# PostExploit
mkdir $TOOLS/postexploit
# PE-Exploit
mkdir $TOOLS/postexploit/exploit
git -C $TOOLS/postexploit/exploit clone https://github.com/calebstewart/pwncat.git
# PE-privesc
mkdir $TOOLS/postexploit/privesc
git -C $TOOLS/postexploit/privesc clone https://github.com/carlospolop/PEASS-ng.git
# PE-Windows
mkdir $TOOLS/postexploit/windows
git -C $TOOLS/postexploit/windows clone https://github.com/gentilkiwi/mimikatz.git

# Reversing
mkdir $TOOLS/reversing
# Windows
mkdir $TOOLS/reversing/windows
git -C $TOOLS/reversing/windows clone https://github.com/extremecoders-re/pyinstxtractor.git
git -C $TOOLS/reversing/windows clone https://github.com/dnSpy/dnSpy.git

# Misc
mkdir $TOOLS/misc
git -C $TOOLS/misc clone https://github.com/stark0de/ippsec-cli.git
git -C $TOOLS/misc clone https://github.com/BishopFox/spoofcheck.git

# Tunneling
mkdir $TOOLS/tunnel
git -C $TOOLS/tunnel clone https://github.com/jpillora/chisel.git

# Stego
mkdir $TOOLS/stego
git -C $TOOLS/stego clone https://github.com/RickdeJager/stegseek.git
wget http://www.caesum.com/handbook/Stegsolve.jar -O -C $TOOLS/stego/stegsolve.jar