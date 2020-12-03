# Ubuntu 20.04 Setup Guide



### 1. Win10 Fully Uninstall Ubuntu Dual Boot

##### People make mistakes. So you are likely to reinstall Ubuntu over and over again. 

##### This step shows you how to perfectly uninstall Ubuntu and go back to Win10 single boot.

##### https://blog.csdn.net/guikunchen/article/details/88077330.



### 2. Install Ubuntu Dual Boot

##### (1) Install according to <https://blog.csdn.net/s717597589/article/details/79117112>

##### (2) SSD not detected problem (For PC): <https://samnicholls.net/2016/01/14/how-to-switch-sata-raid-to-ahci-windows-10-xps-13/>

##### (3) Cannot enter install guide / desktop (For PC & Laptop): press "e" at grub, add "nomodeset" after "quiet splash". 

##### (4) Cannot drag window when installing (For Laptop): press Alt or Win and drag.



### 3. First Time In Ubuntu 20.04

##### (1) `sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade `.

##### (2) Install NVIDIA driver in "software & update" -> "Additional Drivers". Find the recommended version by `ubuntu-drivers devices`.



### 4. Essential Things To Do in Ubuntu

##### (1) Time Setting: `timedatectl set-local-rtc 1 --adjust-system-clock`.

##### (2) Install Media Codecs: `sudo apt install ubuntu-restricted-extras`.

##### (3) Install Chrome: 

##### `wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`

##### `sudo apt install ./google-chrome-stable_current_amd64.deb`

##### (4) Install Git: `sudo apt install git`.



### 5. Grub 

##### (1) Install Grub Customizer

##### (2) Change Win10 and Ubuntu boot order if needed

##### (3) Change grub wait time if needed

##### (4) Add background pictures



### 6. Desktop

##### (1) Minimize on Click: `gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'`.

##### (2) Install Gnome Tweaks: `sudo apt install gnome-tweaks`.

##### (3) Install Gnome Extensions: `sudo apt install chrome-gnome-shell`.

##### Recommended Extension: 

##### Arc menu; Dash to panel; Desktop icons; Extensions; Good bye gdm3 login screen; Noannoyance; Openweather; Refresh wifi connections; Topicons plus; User themes; Workspaces to dock.

##### (4) Install Themes: Download themes from <https://www.gnome-look.org/browse/ord/top/>

##### GTK themes/ shell themes go to `/usr/share/themes/`.

##### Icon themes go to `/usr/share/icons/`.

##### Recommended Themes:

##### GTK/shell: Arc Dark <https://www.omgubuntu.co.uk/2016/06/install-latest-arc-gtk-theme-ubuntu-16-04>

##### Icon: Papirus 

##### (5) Change desktop & lock screen background:

##### Pictures go to `/usr/share/backgrounds/`.

##### (6) Change login screen background: <https://itsubuntu.com/change-login-screen-background-in-ubuntu-20-04-lts/>



### 7. Useful Softwares:

##### (1) Flameshot: `sudo apt install flameshot`. 

##### Set custom shortcut for flameshot: the command is`/usr/bin/flameshot gui`.

##### (2) WeChat with Deepinwine:

`git clone "https://gitee.com/wszqkzqk/deepin-wine-for-ubuntu.git"`

`cd deepin-wine`

`sudo ./install.sh`

`sudo apt-get install deepin.com.wechat`

##### (3) Sogou Pinyin:

##### Install Chinese in Language Support; Download sogou from <https://pinyin.sogou.com/linux/>.

`sudo apt-get install fcitx-bin`

`sudo apt-get install fcitx-table`

`sudo dpkg -i sogoupinyin*.deb`

##### Restart Ubuntu and open Fcitx Configure to add input method.

##### (4) Office 2010: <https://gist.github.com/raelgc/4ccc023830bfd12c0227>

##### Download 32 bit ISO file from <https://isoriver.com/microsoft-office-2010-iso/>.

##### (5) Install Sublime, Atom, Pycharm, Clion, Typora from official site / Ubuntu Software.

##### Note that Sublime has no access to mount files if installed from Ubuntu Software.

##### (6) Install VLC: `sudo snap install vlc`



### 8. Configure Python

##### (1) Install pip: 

`sudo apt install python3-pip`

`pip install --upgrade pip`

##### (2) Install venv:

`pip install --user virtualenv`

##### (3) Important Libraries:

` pip install numpy  scipy  pandas  matplotlib`

##### Other libraries are recommended to install in virtual environment.

