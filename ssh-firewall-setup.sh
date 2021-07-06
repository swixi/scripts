#!/bin/bash
mkdir -p /home/brian/.ssh && cp /root/.ssh/authorized_keys /home/brian/.ssh/authorized_keys
chown -hR brian:brian /home/brian/.ssh
ufw allow OpenSSH
ufw enable # now blocking everything except ssh, can test with port listener 'nc -l 7000'