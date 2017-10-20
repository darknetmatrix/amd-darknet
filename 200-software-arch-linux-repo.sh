#!/bin/bash
set -e
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# software from standard Arch Linux repositories
# Core, Extra, Community, Multilib repositories

sudo pacman -S --noconfirm --needed archey3 atom baobab bleachbit catfish clementine conky curl
sudo pacman -S --noconfirm --needed darktable dconf-editor
sudo pacman -S --noconfirm --needed dmidecode
sudo pacman -S --noconfirm --needed evince evolution filezilla firefox
sudo pacman -S --noconfirm --needed galculator geary gimp git gksu glances gnome-disk-utility
sudo pacman -S --noconfirm --needed gnome-font-viewer gnome-screenshot gnome-system-monitor gnome-terminal gnome-tweak-tool
sudo pacman -S --noconfirm --needed gparted gpick grsync
sudo pacman -S --noconfirm --needed hardinfo hddtemp hexchat htop
sudo pacman -S --noconfirm --needed inkscape inxi lm_sensors lsb-release meld mlocate
sudo pacman -S --noconfirm --needed nemo net-tools notify-osd noto-fonts numlockx openshot pinta plank polkit-gnome
sudo pacman -S --noconfirm --needed redshift ristretto sane screenfetch scrot shotwell
sudo pacman -S --noconfirm --needed simple-scan simplescreenrecorder smplayer sysstat
sudo pacman -S --noconfirm --needed terminator thunar transmission-cli transmission-gtk ttf-ubuntu-font-family ttf-droid tumbler
sudo pacman -S --noconfirm --needed variety vlc vnstat wget unclutter


###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################

echo "################################################################"
echo "#### Software from standard Arch Linux Repo installed  #########"
echo "################################################################"
