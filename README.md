Miscellaneous scripts and profile to use when e.g. starting up a fresh VM

## Setting up a new Digital Ocean droplet

For setting up a new Digital Ocean droplet where the root user already can ssh in (so the ssh key is on the remote host), run as root: `user-setup.sh` then `ssh-firewall-setup.sh`. If you want to follow this up with enabling Apache, run `apache-setup.sh`. At this point, you should be able to hit the default Apache page via your domain name.

### user-setup.sh
- creates a user 'brian', adds it to the 'sudo' group, and sets up a bash prompt and some basic aliases
- run as root on the initial login to a new vm
- perhaps do something like `curl https://raw.githubusercontent.com/swixi/scripts/main/user-setup.sh | bash`
