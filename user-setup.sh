#!/bin/bash
adduser brian sudo
echo 'export PS1="[\[$(tput sgr0)\]\[\033[38;5;14m\]\u\[$(tput sgr0)\]@\h \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;219m\]\w\[$(tput sgr0)\]]\\$\[$(tput sgr0)\] "' > /home/brian/.bashrc
echo "alias grep='grep --color=auto'" > /home/brian/.bashrc
echo "alias ls='ls --color=auto'" > /home/brian/.bashrc
echo "color elflord" > /home/brian/.vimrc
echo "syntax on" > /home/brian/.vimrc
chown -hR brian:brian /home/brian/