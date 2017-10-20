#!/bin/bash
set -e
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# installing bluetooth software

sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed bluez-firmware
#in gnome-budgie we rely on this application
sudo pacman -S --noconfirm --needed gnome-bluetooth
#sudo pacman -S --noconfirm --needed blueberry pavucontrol

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

echo "reboot your system then ..."
echo "set with bluetooth icon in bottom right corner"
echo "change to have a2dp if needed"


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
