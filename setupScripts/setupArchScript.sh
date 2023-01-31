#!/usr/bin/env sh

# This script will work only on arch based distros.
# You can manually add or remove package name according to your choice in script for installation.
# Just copy the script and make your own script, also give the execute permission to the script.
# Run command chmod u+x script_name.sh for assinging execute permission to the script.
# Then execute the script by running command 'bash script_name.sh' or './script_name.sh'.
#
echo "=============================================================================================================";
echo "                                Setup for the system will begin shortly!";
echo "=============================================================================================================";
sleep 2s;
sudo pacman -Sy --noconfirm --needed base-devel git
xrandr -r 60
sudo systemctl enable fstrim.timer
sudo systemctl enable --now bluetooth.service
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -si
cd ..
rm -rf paru-bin
paru -Syu kitty fish starship neovim brave-bin google-chrome noto-fonts-emoji vlc ripgrep fd exa bandwhich konsave gparted visual-studio-code-bin telegram-desktop-bin dust onlyoffice-bin ;
chsh -s /bin/fish
echo "=============================================================================================================";
echo "                               Setup Completed! Now enjoy with your computer."; 
echo "=============================================================================================================";
