#!/bin/bash
# GNU General Public License v3.0
# © 2021 Sébastien Bouchard
# <sebastjava@hotmail.ca>

echo; echo; echo; echo
echo "This installer will change your Plymouth theme, giving a new look to your boot screen."
echo "Please enter your password for this."
sudo mkdir -p /usr/share/plymouth/themes && sudo cp -rf mint-logo-2 /usr/share/plymouth/themes
echo

echo "Choose your color:"
OPTIONS="Green Blue"
select opt in $OPTIONS; do
    if [ "$opt" = "Green" ]; then
      echo "You choose Green."
      break
    elif [ "$opt" = "Blue" ]; then
      echo "You choose Blue."
      sudo sed -i 's/spinner-green.png/spinner-blue.png/' /usr/share/plymouth/themes/mint-logo-2/mint-logo.script
      break
    else
      echo "Bad option. Please try again."
    fi
done

echo
echo "This will take a few seconds. Do not quit until you are invited to do so..."
echo
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/mint-logo-2/mint-logo-2.plymouth 200 &&
sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/mint-logo-2/mint-logo-2.plymouth &&
sudo update-initramfs -u &&
echo &&
echo "Installation completed." &&
echo "Now you can close this window and restart your computer to check your new boot screen!"
exit
