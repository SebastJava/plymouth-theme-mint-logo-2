#!/bin/bash
# GNU General Public License v3.0
# © 2021 Sébastien Bouchard
# <sebastjava@hotmail.ca>

echo
echo "This installer will change your Plymouth theme, reverting to your standard Mint logo."
echo "This will take a few seconds. Do not quit until you are invited to do so..."
echo "Please enter your password for this."
echo
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/mint-logo/mint-logo.plymouth 200 &&
sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/mint-logo/mint-logo.plymouth &&
sudo update-initramfs -u &&
echo &&
echo "Installation completed." &&
echo "Now you can close this window and restart your computer to check your restored boot screen!"
exit
