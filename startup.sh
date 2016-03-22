#!/bin/bash

set -e

if [ -f /etc/configured ]; then
  echo 'already configured'
else
  groupadd debian-transmission
  PASSWD_T=${PASSWD_T:-}
  USER_T=${USER_T:-}
  adduser --disabled-password --gecos "" $USER_T
  echo "$USER_T:$PASSWD_T"|chpasswd
  sed -i 's:/user:/'"$USER_T"':g' /var/lib/transmission-daemon/info/settings.json
  sed -i 's:\"password\":\"'"$PASSWD_T"'\":g' /var/lib/transmission-daemon/info/settings.json
  sed -i 's:\"transmission\":\"'"$USER_T"'\":g' /var/lib/transmission-daemon/info/settings.json
  mkdir -p /var/lib/transmission-daemon/info/Incomplete
  mkdir -p home/$USER_T/dl/torrent
  usermod -a -G debian-transmission $USER_T
  chgrp debian-transmission /home/$USER_T/dl/torrent
  chmod 770 /home/$USER_T/dl/torrent
  chown -R debian-transmission /var/log/transmission
  #needed to fix problem with ubuntu ... and cron 
  update-locale
  date > /etc/configured
fi
