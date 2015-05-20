#!/bin/bash -ex

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Misc config
ln -s $DIR/.bashrc $HOME/.bashrc
ln -s $DIR/.bash_aliases $HOME/.bash_aliases
ln -s $DIR/.config $HOME/.config

# Fonts
ln -s -r $DIR/.fonts $HOME/.fonts

# git setup
ln -s $DIR/.gitconfig $HOME/.gitconfig

# gnome-shell setup
ln -s $DIR/.themes $HOME/.themes
ln -s $DIR/.icons $HOME/.icons

# Screen brightness control script
ln -s $DIR/bin $HOME/bin

# xinit
ln -s $DIR/.xinitrc $HOME/.xinitrc

# conky setup
ln -s $DIR/.conky $HOME/.conky
sudo cp ./99-monitor-hotplug.rules /etc/udev/rules.d
sudo cp ./hotplug.sh /usr/local/bin
sudo udevadm control --reload-rules
