#!/bin/bash
set -e
#======================================================================================
#======================================================================================

echo "################################################################################"
echo "#################    Installing reflector if not installed     #################"
echo "################################################################################"


# installing refector to test wich servers are fastest
sudo pacman -S --noconfirm --needed reflector


echo "################################################################################"
echo "#################         Finding the fastest servers          #################"
echo "################################################################################"

# finding the fastest archlinux servers
sudo reflector -l 100 --score 30 --sort rate --threads 20 --verbose -x osbeck -x tomforb --save /tmp/mirrorlist && rankmirrors -n -v /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d/mirrorlist

echo "################################################################################"
echo "#################      These are the fastest servers today     #################"
echo "################################################################################"


cat /etc/pacman.d/mirrorlist

echo "################################################################################"
echo "#################        Checking for possible updates         #################"
echo "################################################################################"

sudo pacman -Syu --noconfirm


echo "################################################################################"
echo "#################          Your system is now up-to-date         #################"
echo "################################################################################"

