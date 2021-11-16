#!/bin/bash

show_usage()
{
  echo "Usage:"
  echo "ssh-setup.sh <username>"
  echo "  Creates .ssh directory for user, copies root key over"
  echo "  Must be run as root"
}

USER=$1
if [ -z "$1" ]; then
  echo "No user specified, exiting\n"
  show_usage
  exit 1
fi

mkdir -p /home/$USER/.ssh && cp /root/.ssh/authorized_keys /home/$USER/.ssh/authorized_keys
chown -hR $USER:$USER /home/$USER/.ssh
