#!bin/bash

basics="git xinput i3 flatpak snap snapd rofi flameshot fzf eza palseaudio"
apps="zoom ranger i3lock"
flatpak="app.zen_browser.zen "
snap="nvim discord"

#python3
py="pipx pip virtualenv"

#C/C++
comp="gcc g++ clang gdb valgrind"

#Java
jav="default-jdk default-jre"
echo "check for updates"
sudo apt-get update
sudo apt-get upgrade

echo "installing your basic packages"
sudo apt-get install $basics 
sudo apt-get install $apps 
sudo snap install snapd
sudo snap install $snap --classic

echo "installing C/C++..."
sudo apt-get install $comp


echo "installing python"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install $py

sudo flatpak install flathub $flatpak

echo "final check for updates"
sudo apt-get update
sudo apt-get upgrade

echo "installing Java"
sudo apt-get install $jav
echo "basic setup is done!"
