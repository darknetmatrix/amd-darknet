#!/bin/bash
set -e
##################################################################################################################

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# use mirror if you have a slow connection
sudo pacman -Syyu
sudo pacman -S gnome --noconfirm --needed
#sudo pacman -S budgie-desktop
#packer budgie-desktop-git --noedit --noconfirm
yaourt budgie-desktop-git --noconfirm

