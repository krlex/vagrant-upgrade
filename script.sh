#!/bin/bash

INSTALL_DIR='/usr/bin'
FOX_DIR='/opt/'
REGEX="^PATH=.*\K$INSTALL_DIR(?=.*)"
if [[ $(env | grep -oP $REGEX) != $INSTALL_DIR ]]; then
   echo "Looks like your install directory $INSTALL_DIR is not in your PATH. Make sure you export it"; fi

INSTALLED_VAGRANT_VERSION=$(vagrant --version | grep -Poie '\d+.\d+.\d+')


if [[ ${LATEST_VAGRANT_RELEASE} != ${INSTALLED_VAGRANT_VERSION} ]]; then
   echo "Installing Vagrant ${LATEST_VAGRANT_RELEASE}..."
   wget -O /tmp/vagrant.deb "https://releases.hashicorp.com/vagrant/2.2.10/vagrant_2.2.10_x86_64.deb"
   sudo dpkg -i /tmp/vagrant.deb
   sudo rm /tmp/vagrant.deb
else
   echo "Nothing done. Latest Vagrant already installed."
fi

