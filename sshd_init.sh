#!/bin/bash

echo "/usr/local/bin/sudosh" >> /etc/shells
rm -f /etc/ssh/ssh_host_*key*
/usr/bin/ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key > /dev/null 2>&1
/usr/bin/ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key > /dev/null 2>&1
/usr/bin/ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key > /dev/null 2>&1
/usr/bin/ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key > /dev/null 2>&1

/usr/sbin/useradd -m $1 -s /usr/local/bin/sudosh
/bin/mkdir /home/$1/.ssh
/bin/echo $2 > /home/$1/.ssh/authorized_keys
/bin/chown -R $1:$1 /home/$1
/bin/chmod 0700 /home/$1/.ssh
/bin/chmod 0600 /home/$1/.ssh/authorized_keys

/usr/sbin/sshd -D
