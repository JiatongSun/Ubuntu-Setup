#!/bin/bash

# Start
echo "Start Ubuntu Configuration!"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

# Configure Time
timedatectl set-local-rtc 1 --adjust-system-clock

# Install Media Codecs
sudo apt install ubuntu-restricted-extras -y

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

# Install Grub Customizer
sudo apt install grub-customizer -y

# Minimize on Click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# Install Gnome Tweaks
sudo apt install gnome-tweaks -y
sudo apt install chrome-gnome-shell

# Install Git
sudo apt install git -y
git clone https://github.com/JiatongSun/Ubuntu-Setup.git

# Add Themes and Background
sudo cp -r Ubuntu-Setup/Themes/GTK/* /usr/share/themes/
sudo cp -r Ubuntu-Setup/Themes/Icon/* /usr/share/icons/
sudo cp Ubuntu-Setup/Background/* /usr/share/backgrounds/

# Install Flameshot
sudo apt install flameshot -y

# Install VLC
sudo snap install vlc -y

# Configure Python
sudo apt install python3-pip -y
pip install --upgrade pip
pip install --user virtualenv
pip install numpy  scipy  pandas  matplotlib

# Install Sogou Pinyin (Please download sogou from https://pinyin.sogou.com/linux/)
sudo apt install fcitx-bin -y
sudo apt-get install fcitx-table -y
# sudo dpkg -i sogoupinyin*.deb 

# Install WeChat
git clone "https://gitee.com/wszqkzqk/deepin-wine-for-ubuntu.git"
sudo deepin-wine-for-ubuntu/install.sh -y
wget -qO- https://deepin-wine.i-m.dev/setup.sh | sudo sh
sudo apt-get install deepin.com.wechat -y

# Install Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora -y

# Install Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get install sublime-text -y




