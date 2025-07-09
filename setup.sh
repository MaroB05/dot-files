#!bin/bash

basics="git xinput i3-wm flatpak snap snapd rofi flameshot fzf eza pulseaudio picom alacritty"
apps="zoom ranger i3lock"
flatpak="app.zen_browser.zen"
snap="nvim discord"

#python3
py="pipx pip virtualenv"

#C/C++
comp="gcc g++ clang gdb valgrind"

#Java
jav="default-jdk default-jre"
echo "check for updates"
sudo apt-get update
sudo apt-get -y upgrade

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

echo "nvim setup"
echo "Installing JetBrainsMono nerd font"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
sudo mkdir -p ~/.local/share/fonts
unzip JetBrainsMono.zip -d ~/.local/share/fonts

echo "setting configs"
cp -r i3 nvim polybar picom rofi ~/.config/

echo "Setup is almost done!"
echo "Add \n \"source ~/dot-files/scripts/aliases.sh\" \n to your .bashrc"
