# Installation script to install all configurations

# Install theme

## Make themes dir if not exists
mkdir -p /home/kali/.themes
## Unzip the mantis-theme.zip to /home/kali/.themes
unzip Themes/mantis-theme.zip -d /home/kali/.themes/
## Unzip the flat-remix icons zip to /home/kali/.icons
tar -xf Icons/05-Flat-Remix-Black-20230622.tar.xz -C /home/kali/.icons
## Change the xfce4-settings-editor values to use Mantis theme
#xfconf-query -c xsettings -p /Net/ThemeName -s "Mantis"

# Copy files
## etc/profile -> /etc/profile
cp ./files/etc/profile /etc/profile
## config -> /home/kali/.config
cp -r ./files/home/config/. /home/kali/.config/
## ./files/home/zshrc -> /home/kali/.zshrc
cp ./files/home/zshrc /home/kali/.zshrc
## ./files/home/zshrc -> /root/.zshrc
cp ./files/home/zshrc /root/.zshrc