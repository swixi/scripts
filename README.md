Miscellaneous scripts and profile to use when e.g. starting up a fresh VM

## If setting up a new Digital Ocean droplet

For setting up a new Digital Ocean droplet where the root user already can ssh in (so the ssh key is on the remote host), run as root: `user-setup.sh <username>` then `ssh-setup.sh <username>`. This will setup the new user with a home directory and the root ssh key. Next, set up the firewall by running `firewall-setup.sh`. If you want to follow this up with enabling Apache, run `apache-setup.sh`. At this point, you should be able to hit the default Apache page via your domain name. Test your setup using some of the commands in the `pen-testing` file.

### user-setup.sh <username>
- creates a user, adds it to the 'sudo' group, and sets up a bash prompt and some basic aliases
- run as root on the initial login to a new vm
- if no git, can try `curl https://raw.githubusercontent.com/swixi/scripts/main/user-setup.sh | bash`
