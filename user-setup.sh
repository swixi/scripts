#!/bin/bash
adduser brian sudo
cat bashrc >> /home/brian/.bashrc
cat vimrc >> /home/brian/.vimrc
chown -hR brian:brian /home/brian/
