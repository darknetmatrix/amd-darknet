#!/bin/bash
set -e
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


sudo pacman -S --noconfirm --needed samba
sudo wget "https://git.samba.org/samba.git/?p=samba.git;a=blob_plain;f=examples/smb.conf.default;hb=HEAD" -O /etc/samba/smb.conf
sudo systemctl enable smbd.service
sudo systemctl start smbd.service
sudo systemctl enable nmbd.service
sudo systemctl start nmbd.service
##Change your username here
sudo smbpasswd -a erik

#access samba share windows
sudo pacman -S --noconfirm --needed gvfs-smb


# sudo systemctl restart ... if you run into trouble
# testparm will check the conf file for errors

# red hat samba sharing config

echo "################################################################"
echo "system-config-samba"
echo "################################################################"


package="system-config-samba"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi pacaur &> /dev/null; then

		echo "Installing with pacaur"
		pacaur -S --noconfirm --noedit  $package

	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package

	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"


	fi

fi





echo "Run system-config-samba to set up shares"


echo "################################################################"
echo "#########   samba  software installed           ################"
echo "################################################################"
