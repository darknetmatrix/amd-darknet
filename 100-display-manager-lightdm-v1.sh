#!/bin/bash
set -e


# use mirror if you have a slow connection
sudo pacman -Syyu
sudo pacman -S lightdm lightdm-gtk-greeter --noconfirm --needed
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target
