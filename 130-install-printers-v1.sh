#!/bin/bash
set -e
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################



sudo pacman -S cups cups-pdf ghostscript gsfonts libcups hplip system-config-printer --noconfirm --needed
systemctl enable org.cups.cupsd.service
systemctl start org.cups.cupsd.service


echo "################################################################"
echo "#########   printer management software installed     ##########"
echo "################################################################"
