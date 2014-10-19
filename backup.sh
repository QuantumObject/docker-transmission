#!/bin/bash

mkdir -p /var/backups/torrent
cp -R /home/$USER_T/dl/torrent/* /var/backups/torrent/

#Backup important file ... of the configuration ...
cp  /etc/hosts  /var/backups/
