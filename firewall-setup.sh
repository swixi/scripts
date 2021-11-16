#!/bin/bash

ufw allow OpenSSH
ufw enable # now blocking everything except ssh, can test with port listener 'nc -l 7000'
