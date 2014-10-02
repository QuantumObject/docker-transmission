#!/bin/sh
### In transmissiond.sh (make sure this file is chmod +x):

exec  /usr/bin/foreground.sh >>/var/log/transmissiond.log 2>&1
