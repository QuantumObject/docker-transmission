#!/bin/sh
### In rserver.sh (make sure this file is chmod +x):
# `chpst -u xxxx` runs the given command as the user `xxxx`.
# If you omit that part, the command will be run as root.

exec chpst -u root /usr/local/bin/transmission-daemon  -f -g /var/lib/transmission-daemon/info/ 2>&1
