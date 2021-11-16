#!/bin/bash

show_usage()
{
  echo "Usage:"
  echo "user-setup.sh <username>"
  echo "  Creates user, adds to sudo group, and sets up bashrc and vimrc"
  echo "  Must be run as root"
}

USER=$1
if [ -z "$1" ]; then
  echo "No user specified, exiting\n"
  show_usage
  exit 1
fi

adduser $USER
adduser $USER sudo
HOME_DIR=/home/$USER
echo "Appending bashrc >> $HOME_DIR/.bashrc"
cat bashrc >> $HOME_DIR/.bashrc
echo "Appending vimrc >> $HOME_DIR/.vimrc"
cat vimrc >> $HOME_DIR/.vimrc
echo "Giving ownership of $HOME_DIR/ to $USER"
chown -hR $USER:$USER $HOME_DIR/
echo "Done."
