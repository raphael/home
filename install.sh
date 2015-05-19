#!/bin/bash -ex

cp .bashrc $HOME
cp .bash_aliases $HOME
cp -r .config $HOME
cp -r .conky $HOME
cp -r .fonts $HOME
cp .gitconfig $HOME
cp .gitignore $HOME
cp -r .themes $HOME

sudo cp ./99-monitor-hotplug.rules /etc/udev/rules.d
sudo cp ./hotplug.sh /usr/local/bin

sudo udevadm control --reload-rules
