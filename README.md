- [linux-reset](#linux-reset)
  - [Theme](#theme)
    - [Installation](#installation)

# linux-reset

This repository was made to customize my Kali Linux, install some important tools used for pentesting/ctf's.  

![Look of it](image.png)

## Theme

The theme in use is [Mantissa](https://github.com/mantissa-/mantis-theme) and the icons in use are [Flat-Remix-Black Icons](https://www.gnome-look.org/p/1012430/).

### Installation

For now the script is made only for my PC.  
The user should be kali.  

- Make the script executable: `chmod +x install.sh`
- Run the script as root because we also override the root .zshrc file: `sudo ./install.sh`
  > If you don't want this you can comment the last part of `install.sh` that copies the `zshrc` to `/root/.zshrc`
- Reboot the machine `sudo reboot now`

After installing the themes and the configs Kali should have a darker look.